import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/logged_bloc_observer.dart';
import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loggy/loggy.dart';
import 'package:mocktail/mocktail.dart';

class MockLoggy extends Mock implements Loggy {}

void main() {
  late LoggedBlocObserver observer;
  late PostsBloc postsBloc;
  late Loggy loggy;

  setUp(() {
    loggy = MockLoggy();
    final Dio dio = Dio();
    final postsClient = PostsClient(dio);
    final postsRepository = PostsRepository(client: postsClient);

    postsBloc = PostsBloc(postsRepository: postsRepository);
    observer = LoggedBlocObserver(logger: loggy);
  });

  group('LoggedBlocObserver', () {
    group('onCreate', () {
      test('should call loggy.info', () {
        observer.onCreate(postsBloc);
        verify(() => loggy.info('${postsBloc.runtimeType} created')).called(1);
      });
    });

    group('onClose', () {
      test('should call loggy.info', () {
        observer.onClose(postsBloc);
        verify(() => loggy.info('${postsBloc.runtimeType} closed')).called(1);
      });
    });

    group('onTransition', () {
      test('should call loggy.info', () {
        const Transition transition = Transition(
          currentState: PostsState.initial(),
          event: PostsEvent.fetchMore(),
          nextState: PostsState.success(),
        );

        observer.onTransition(postsBloc, transition);
        verify(() => loggy.info('${postsBloc.runtimeType}: $transition'))
            .called(1);
      });
    });

    group('onError', () {
      test('should call loggy.error', () {
        final error = Error();
        const stackTrace = StackTrace.empty;

        observer.onError(postsBloc, error, stackTrace);
        verify(() => loggy.error(
              '${postsBloc.runtimeType}: error',
              error,
              stackTrace,
            )).called(1);
      });
    });
  });
}
