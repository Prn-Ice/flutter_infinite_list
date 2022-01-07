import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mockPost = Post(
    userId: 1,
    id: 1,
    title: 'sunt aut facere repellat provident ',
    body: 'quia et suscipit\nsuscipit recusandae ',
  );
  group('PostListItem ', () {
    testWidgets(
        'renders ListTile '
        'with properties from value passed to post parameter', (tester) async {
      await tester.pumpWidget(MaterialApp(home: PostListItem(post: mockPost)));
      expect(find.byType(ListTile), findsOneWidget);
      expect(find.text(mockPost.id.toString()), findsOneWidget);
      expect(find.text((mockPost.title ?? 'Empty').toString()), findsOneWidget);
      expect(find.text((mockPost.body ?? 'Empty').toString()), findsOneWidget);
    });
  });
}
