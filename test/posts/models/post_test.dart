import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixtures.dart';

void main() {
  group('Post', () {
    test('supports value comparison', () {
      expect(
        Post(id: 1, userId: 1, title: 'title', body: 'body'),
        Post(id: 1, userId: 1, title: 'title', body: 'body'),
      );
    });

    group('fromJson', () {
      test(
          'returns a valid post model '
          'when valid json is supplied', () {
        final result = Post.fromJson(postMap);
        mockPost.toJson();
        expect(result, mockPost);
      });
    });
  });
}
