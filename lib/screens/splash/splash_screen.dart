import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rockit/screens/home/home_screen.dart';
import 'package:rockit/screens/splash/bloc/splash_bloc.dart';
import 'package:rockit/widgets/pagination_dots.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(),
      child: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state.toHomeScreen) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ));
          }
        },
        builder: (context, state) {
          return Container(
            color: const Color(0xff55418E),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/fish.png"),
                    const Text(
                      "Rockit",
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
                const Text(
                  "Your scooter in\none app",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/images/illustration.png",
                  width: 314,
                  height: 389,
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  child: Container(
                    key: ValueKey<int>(state.selectedIndex),
                    alignment: Alignment.center,
                    height: 84,
                    child: Text(
                      key: ValueKey<int>(state.selectedIndex),
                      state.description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PaginationDots(
                        pageSize: 4,
                        selectedIndex: state.selectedIndex,
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.read<SplashBloc>().add(NextButtonClick());
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(40, 40),
                            minimumSize: const Size(40, 40),
                            backgroundColor: const Color(0xFFFFA500),
                            padding: const EdgeInsets.all(
                                0)), // This property set to 0 to center the icon
                        child: const Icon(
                          Icons.chevron_right_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
          ;
        },
      ),
    );
  }
}
