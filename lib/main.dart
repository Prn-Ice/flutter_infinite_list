import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/logged_bloc_observer.dart';
import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';
import 'package:loggy/loggy.dart';

import 'app.dart';

void main() {
  Loggy.initLoggy(logPrinter: const PrettyPrinter(showColors: true));

  final dio = Dio()..interceptors.add(LoggyDioInterceptor(responseBody: false));
  final postsClient = PostsClient(dio);
  final postsRepository = PostsRepository(client: postsClient);

  BlocOverrides.runZoned(
    () => runApp(App(postsRepository: postsRepository)),
    blocObserver: LoggedBlocObserver(logger: Loggy('BlocObserver')),
  );
}
