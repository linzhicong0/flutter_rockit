import 'package:flutter/material.dart';

class ScooterStatusWidget extends StatelessWidget {
  const ScooterStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFFFFA500),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Whitney’s Scooter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Locked",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFFE49401),
                ),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Color(0xFFFFA500),
                  child: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
