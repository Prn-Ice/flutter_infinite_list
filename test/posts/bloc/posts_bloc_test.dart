import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostsRepository extends Mock implements PostsRepository {}

void main() {
  final mockPosts = List.generate(5, (i) => Post(id: i, title: 'Post $i'));
  final extraMockPosts = [Post(id: 2, title: 'post title', body: 'post body')];
  late PostsRepository postsRepository;

  setUp(() {
    postsRepository = MockPostsRepository();
  });

  group('PostsBloc', () {
    test('initial state is PostsState.initial()', () {
      expect(
        PostsBloc(postsRepository: postsRepository).state,
        const PostsState.initial(),
      );
    });
  });

  group('_onPostsFetched ', () {
    blocTest<PostsBloc, PostsState>(
      'does noting when state.hasReachedMax is true',
      build: () => PostsBloc(postsRepository: postsRepository),
      seed: () => const PostsState.success(hasReachedMax: true),
      act: (bloc) => bloc.add(const PostsEvent.fetchMore()),
      expect: () => [],
    );

    blocTest<PostsBloc, PostsState>(
      'emits PostsState.success(mockPosts) '
      'when state is _PostsInitial '
      'and postsRepository.fetchPosts returns mockPosts',
      setUp: () {
        when(() => postsRepository.fetchPosts())
            .thenAnswer((_) => Future.value(mockPosts));
      },
      build: () => PostsBloc(postsRepository: postsRepository),
      seed: () => const PostsState.initial(),
      act: (bloc) => bloc.add(const PostsEvent.fetchMore()),
      verify: (bloc) =>
          verify(() => postsRepository.fetchPosts(start: 0)).called(1),
      expect: () => [PostsState.success(posts: mockPosts)],
    );

    blocTest<PostsBloc, PostsState>(
      'drops new events while processing current event',
      setUp: () {
        when(() => postsRepository.fetchPosts())
            .thenAnswer((_) => Future.value(mockPosts));
      },
      build: () => PostsBloc(postsRepository: postsRepository),
      act: (bloc) {
        bloc
          ..add(const PostsEvent.fetchMore())
          ..add(const PostsEvent.fetchMore());
      },
      verify: (bloc) => verify(() => postsRepository.fetchPosts()).called(1),
      expect: () => [PostsState.success(posts: mockPosts)],
    );

    blocTest<PostsBloc, PostsState>(
      'throttles events',
      setUp: () {
        when(() => postsRepository.fetchPosts())
            .thenAnswer((_) => Future.value(mockPosts));
      },
      build: () => PostsBloc(postsRepository: postsRepository),
      act: (bloc) async {
        bloc.add(const PostsEvent.fetchMore());
        await Future.delayed(Duration.zero);
        bloc.add(const PostsEvent.fetchMore());
      },
      verify: (bloc) => verify(() => postsRepository.fetchPosts()).called(1),
      expect: () => [PostsState.success(posts: mockPosts)],
    );

    blocTest<PostsBloc, PostsState>(
      'emits PostsState.failure() '
      'when postsRepository.fetchPosts throws an error',
      setUp: () {
        when(() => postsRepository.fetchPosts()).thenThrow(Exception('error'));
      },
      build: () => PostsBloc(postsRepository: postsRepository),
      act: (bloc) => bloc.add(const PostsEvent.fetchMore()),
      verify: (bloc) => verify(() => postsRepository.fetchPosts()).called(1),
      expect: () => [const PostsState.failure()],
    );

    blocTest<PostsBloc, PostsState>(
      'emits PostsState.success()and reaches '
      'when 0 posts are fetched',
      setUp: () {
        when(() => postsRepository.fetchPosts(start: any(named: 'start')))
            .thenAnswer((_) => Future.value([]));
      },
      seed: () => PostsState.success(posts: mockPosts),
      build: () => PostsBloc(postsRepository: postsRepository),
      act: (bloc) => bloc.add(const PostsEvent.fetchMore()),
      verify: (bloc) =>
          verify(() => postsRepository.fetchPosts(start: mockPosts.length))
              .called(1),
      expect: () => [PostsState.success(posts: mockPosts, hasReachedMax: true)],
    );

    blocTest<PostsBloc, PostsState>(
      'emits PostsState.success() and does not reach max '
      'when additional posts are fetched',
      setUp: () {
        when(() => postsRepository.fetchPosts(start: any(named: 'start')))
            .thenAnswer((_) => Future.value(extraMockPosts));
      },
      seed: () => PostsState.success(posts: mockPosts),
      build: () => PostsBloc(postsRepository: postsRepository),
      act: (bloc) => bloc.add(const PostsEvent.fetchMore()),
      verify: (bloc) =>
          verify(() => postsRepository.fetchPosts(start: mockPosts.length))
              .called(1),
      expect: () => [
        PostsState.success(
          posts: [...mockPosts, ...extraMockPosts],
          hasReachedMax: false,
        )
      ],
    );
  });
}
