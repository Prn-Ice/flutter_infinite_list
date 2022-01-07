import '../posts.dart';

const _postLimit = 20;

class PostsRepository {
  final PostsClient client;

  PostsRepository({required this.client});

  /// Fetch posts using posts_client
  Future<List<Post>> fetchPosts({int start = 0}) async {
    return client.getPosts(start: start, limit: _postLimit);
  }
}
