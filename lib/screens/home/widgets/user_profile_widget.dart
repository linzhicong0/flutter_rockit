// User profile on the top of the home screen
import 'package:flutter/material.dart';
import 'package:rockit/screens/profile/menu_screen.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset("assets/images/headimg.png"),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Whitney Leon",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1B1D28),
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  "Welcome back !",
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF7B7F9E),
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            )
          ],
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MenuScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            child: Image.asset("assets/images/dotbtn.png"))
      ],
    );
  }
}
