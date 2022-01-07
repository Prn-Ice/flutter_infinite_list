import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostsRepository extends Mock implements PostsRepository {}

void main() {
  late PostsBloc postsBloc;
  late PostsRepository postsRepository;

  setUp(() {
    postsRepository = MockPostsRepository();
    postsBloc = PostsBloc(postsRepository: postsRepository);
  });

  tearDown(() => postsBloc.close());

  group('PostsPage', () {
    testWidgets('renders PostsList', (WidgetTester tester) async {
      await _pumpPostsPage(tester, postsRepository);
      expect(find.byType(PostsList), findsOneWidget);
    });

    testWidgets('calls fetchPosts after build', (WidgetTester tester) async {
      await _pumpPostsPage(tester, postsRepository);
      verify(() => postsRepository.fetchPosts()).called(1);
    });
  });
}

Future<void> _pumpPostsPage(
    WidgetTester tester, PostsRepository postsRepository) async {
  await tester.pumpWidget(MaterialApp(
    home: RepositoryProvider.value(
      value: postsRepository,
      child: const PostsPage(),
    ),
  ));
  await tester.pumpAndSettle();
}
