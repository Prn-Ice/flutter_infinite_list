import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PostsEvent', () {
    test('supports value comparison', () {
      expect(PostsEvent.fetchMore(), PostsEvent.fetchMore());
    });
  });
}
