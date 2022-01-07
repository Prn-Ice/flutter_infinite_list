import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_infinite_list/posts/models/post.dart';
import 'package:flutter_infinite_list/posts/repository/posts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostsRepository postsRepository;

  PostsBloc({required this.postsRepository})
      : super(const PostsState.initial()) {
    on<_PostsFetchMore>(
      _onPostsFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  Future<void> _onPostsFetched(
    _PostsFetchMore event,
    Emitter<PostsState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state is _PostsInitial) {
        final posts = await postsRepository.fetchPosts();
        emit(PostsState.success(posts: posts, hasReachedMax: false));
      } else {
        final start = state.posts.length;
        final posts = await postsRepository.fetchPosts(start: start);
        emit(posts.isEmpty
            ? state.copyWith(hasReachedMax: true)
            : PostsState.success(
                posts: state.posts + posts, hasReachedMax: false));
      }
    } catch (e, s) {
      emit(const PostsState.failure());
      addError(e, s);
    }
  }
}
