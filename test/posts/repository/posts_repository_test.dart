import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostsClient extends Mock implements PostsClient {}

void main() {
  final mockPosts = List.generate(5, (i) => Post(id: i, title: 'Post $i'));
  late PostsClient postsClient;
  late PostsRepository postsRepository;

  setUp(() {
    postsClient = MockPostsClient();
    postsRepository = PostsRepository(client: postsClient);
  });

  group('PostsRepository ', () {
    group('fetchPosts ', () {
      test('returns the output of client.getPosts', () async {
        when(() => postsClient.getPosts(
              start: any(named: 'start'),
              limit: any(named: 'limit'),
            )).thenAnswer((_) => Future.value(mockPosts));

        final result = await postsRepository.fetchPosts();
        expect(result, mockPosts);
      });
    });
  });
}
