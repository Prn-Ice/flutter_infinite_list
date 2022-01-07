import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PostsState', () {
    group('PostsState.initial', () {
      test('supports value comparison', () {
        expect(
          PostsState.initial(posts: [], hasReachedMax: false),
          PostsState.initial(posts: [], hasReachedMax: false),
        );
      });
    });

    group('PostsState.success', () {
      test('supports value comparison', () {
        expect(
          PostsState.success(posts: [], hasReachedMax: false),
          PostsState.success(posts: [], hasReachedMax: false),
        );
      });
    });

    group('PostsState.failure', () {
      test('supports value comparison', () {
        expect(
          PostsState.failure(posts: [], hasReachedMax: false),
          PostsState.failure(posts: [], hasReachedMax: false),
        );
      });
    });

    test('toString returns correct value', () {
      expect(
        const PostsState.initial(posts: [], hasReachedMax: false).toString(),
        'PostsState { posts: 0, hasReachedMax: false }',
      );
    });
  });
}
