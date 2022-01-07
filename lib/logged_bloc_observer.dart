
import 'package:bloc/bloc.dart';
import 'package:loggy/loggy.dart';

class LoggedBlocObserver extends BlocObserver {
  final Loggy logger;

  LoggedBlocObserver({
    required this.logger,
  });

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    logger.info('${bloc.runtimeType} created');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    logger.info('${bloc.runtimeType} closed');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.info('${bloc.runtimeType}: $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.error('${bloc.runtimeType}: error', error, stackTrace);
  }
}