import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/posts/posts.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.postsRepository,
  }) : super(key: key);

  final PostsRepository postsRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<PostsRepository>.value(
      value: postsRepository,
      child: const MaterialApp(home: PostsPage()),
    );
  }
}
