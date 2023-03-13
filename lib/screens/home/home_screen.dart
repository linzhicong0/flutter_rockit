import 'package:flutter/material.dart';
import 'package:rockit/screens/home/widgets/description_widget.dart';
import 'package:rockit/screens/home/widgets/scooter_info_widget.dart';
import 'package:rockit/screens/home/widgets/scooter_status_widget.dart';
import 'package:rockit/screens/home/widgets/user_profile_widget.dart';

// const TextStyle kDefaultTextStyle = TextStyle(color: );

class Home extends StatelessWidget {
  Home({super.key});

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: Colors.white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 35),
            UserProfileWidget(),
            SizedBox(height: 27),
            DescriptionWidget(),
            SizedBox(height: 24.5),
            ScooterStatusWidget(),
            SizedBox(height: 26),
            Expanded(child: ScooterInfoWidget()),
          ]),
    );
  }
}
