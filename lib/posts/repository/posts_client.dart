import 'package:dio/dio.dart';
import 'package:flutter_infinite_list/posts/models/post.dart';
import 'package:retrofit/retrofit.dart';

part 'posts_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class PostsClient {
  factory PostsClient(Dio dio, {String baseUrl}) = _PostsClient;

  @GET("/posts")
  Future<List<Post>> getPosts({
    @Query("_start") int start = 0,
    @Query("_limit") int limit = 20,
  });
}
