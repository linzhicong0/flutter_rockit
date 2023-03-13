import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/scooterbackground.png"),
        Positioned(
          top: 60,
          left: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "We updated your scooter",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                "Everything your scooter needed \nwe did it for you.",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 2,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 250,
          top: -5,
          child: MaterialButton(
            onPressed: () {},
            color: Colors.white,
            shape: const CircleBorder(),
            height: 20,
            child: const Icon(
              Icons.close,
              size: 15,
              color: Color(0xFFFFA500),
            ),
          ),
        )
      ],
    );
  }
}
