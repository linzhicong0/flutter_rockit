part of 'splash_bloc.dart';

@immutable
class SplashState {
  final int selectedIndex;
  final String description;
  final bool toHomeScreen;

  const SplashState({
    this.selectedIndex = 0,
    this.description = "",
    this.toHomeScreen = false,
  });

  @override
  String toString() {
    return "SplashState: [selectedIndex: $selectedIndex, description: $description, toHomeScreen: $toHomeScreen]";
  }
}
