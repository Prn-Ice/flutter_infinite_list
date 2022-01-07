part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const PostsState._();
  const factory PostsState.initial({
    @Default(<Post>[]) List<Post> posts,
    @Default(false) bool hasReachedMax,
  }) = _PostsInitial;
  const factory PostsState.success({
    @Default(<Post>[]) List<Post> posts,
    @Default(false) bool hasReachedMax,
  }) = _PostsSuccess;
  const factory PostsState.failure({
    @Default(<Post>[]) List<Post> posts,
    @Default(false) bool hasReachedMax,
  }) = _PostsFailure;

  @override
  String toString() =>
      'PostsState { posts: ${posts.length}, hasReachedMax: $hasReachedMax }';
}
