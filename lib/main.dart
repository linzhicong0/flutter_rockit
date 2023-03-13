import 'package:flutter/material.dart';
import 'package:rockit/screens/home/home_screen.dart';
import 'package:rockit/screens/profile/menu_screen.dart';
import 'package:rockit/screens/splash/splash_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  final bool firstLogin = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstLogin ? SplashScreen() : Home(),
      // home: MenuScreen(),
    );
  }
}
