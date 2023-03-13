import 'package:flutter/material.dart';

class ScooterInfoWidget extends StatelessWidget {
  const ScooterInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: const EdgeInsets.all(0),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: const [
          InfoWidget(
            title: "Total distance",
            icon: Icons.map_outlined,
            text: "17.8KM",
          ),
          InfoWidget(
            title: "Total battery",
            icon: Icons.battery_charging_full,
            text: "100%",
          ),
          InfoWidget(
            title: "Average Speed",
            icon: Icons.speed,
            text: "45 KM/h",
          ),
          InfoWidget(
            title: "Ride Updated",
            icon: Icons.upload,
            text: "1 day ago.",
          ),
        ]);
  }
}

class InfoWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final String text;
  const InfoWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      width: 152,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE6E5F2)),
        borderRadius: BorderRadius.circular(23),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF55418E),
              ),
            ),
            Icon(
              icon,
              color: const Color(0xFF9897AD),
              size: 41,
            ),
            Text(
              text,
              style: const TextStyle(
                decoration: TextDecoration.none,
                color: Color(0xFFFFA500),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
