import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  static List<String> descriptions = [
    "Everything you need to know about\nyour scooter is available here in\nyour app0",
    "Everything your scooter needed\nwe did it for you.",
    "Hello world!",
    "Everything you need to know about\nyour scooter is available here in\nyour app3",
  ];

  SplashBloc() : super(SplashState(description: descriptions[0])) {
    on<NextButtonClick>((event, emit) {
      if (state.selectedIndex < descriptions.length - 1) {
        SplashState newState = SplashState(
            selectedIndex: state.selectedIndex + 1,
            description: descriptions[state.selectedIndex + 1]);
        emit(newState);
        return;
      } else {
        emit(const SplashState(toHomeScreen: true));
      }
    });
  }
}
