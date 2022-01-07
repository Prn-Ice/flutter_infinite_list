import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostsRepository extends Mock implements PostsRepository {}

class MockPostsBloc extends MockBloc<PostsEvent, PostsState>
    implements PostsBloc {}

extension on WidgetTester {
  Future<void> pumpPostsList(PostsBloc bloc, PostsRepository repository) async {
    return pumpWidget(RepositoryProvider.value(
      value: repository,
      child: MaterialApp(
        home: BlocProvider<PostsBloc>.value(
          value: bloc,
          child: const PostsList(),
        ),
      ),
    ));
  }
}

void main() {
  final mockPosts = List.generate(
    5,
    (i) => Post(id: i, title: 'post title', body: 'post body'),
  );

  late PostsRepository postsRepository;
  late PostsBloc postsBloc;

  setUp(() {
    postsRepository = MockPostsRepository();
    postsBloc = MockPostsBloc();
  });

  tearDown(() => postsBloc.close());

  group('PostsList', () {
    testWidgets(
        'renders error text '
        'when state is PostsState.failure', (WidgetTester tester) async {
      when(() => postsBloc.state).thenReturn(const PostsState.failure());
      await tester.pumpPostsList(postsBloc, postsRepository);
      expect(
        find.text('failed to fetch posts'),
        findsOneWidget,
      );
    });

    testWidgets(
        'renders loading indicator '
        'when state is PostsState.loading', (WidgetTester tester) async {
      when(() => postsBloc.state).thenReturn(const PostsState.initial());
      await tester.pumpPostsList(postsBloc, postsRepository);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        'renders error message '
        'when state is PostsState.success and posts is empty',
        (WidgetTester tester) async {
      when(() => postsBloc.state).thenReturn(const PostsState.success());
      await tester.pumpPostsList(postsBloc, postsRepository);
      expect(
        find.widgetWithText(Center, 'no posts'),
        findsOneWidget,
      );
    });

    testWidgets(
        'renders 5 PostListItem widgets and a BottomLoader '
        'when state is PostsState.success, returns 5 posts '
        'and hasReached is false', (WidgetTester tester) async {
      when(() => postsBloc.state)
          .thenReturn(PostsState.success(posts: mockPosts));
      await tester.pumpPostsList(postsBloc, postsRepository);
      expect(find.byType(PostListItem), findsNWidgets(5));
      expect(find.byType(BottomLoader), findsOneWidget);
    });

    testWidgets(
        'renders 5 PostListItem widgets and no BottomLoader '
        'when state is PostsState.success, returns 5 posts '
        'and hasReached is true', (WidgetTester tester) async {
      when(() => postsBloc.state).thenReturn(
          PostsState.success(posts: mockPosts, hasReachedMax: true));
      await tester.pumpPostsList(postsBloc, postsRepository);
      expect(find.byType(PostListItem), findsNWidgets(5));
      expect(find.byType(BottomLoader), findsNothing);
    });

    testWidgets(
        'should call PostsBloc.add(PostsEvent.fetchMore()) '
        'when user reaches the bottom of the list',
        (WidgetTester tester) async {
      when(() => postsBloc.state).thenReturn(
        PostsState.success(
          posts: List.generate(
            10,
            (i) => Post(id: i, title: 'post title', body: 'post body'),
          ),
        ),
      );
      await tester.pumpPostsList(postsBloc, postsRepository);
      await tester.drag(find.byType(PostsList), const Offset(0, -500));

      verify(() => postsBloc.add(const PostsEvent.fetchMore())).called(1);
    });
  });
}
