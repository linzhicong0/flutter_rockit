import 'package:flutter/material.dart';

class PaginationDots extends StatelessWidget {
  final int pageSize;
  final int selectedIndex;
  const PaginationDots(
      {super.key, required this.pageSize, this.selectedIndex = 0})
      : assert(pageSize > 0),
        assert(selectedIndex >= 0),
        assert(selectedIndex < pageSize);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < pageSize; i++) ...[
          Container(
            margin: const EdgeInsets.only(right: 8.0),
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedIndex == i
                    ? const Color(0xFFFFA500)
                    : Colors.white),
          ),
        ]
      ],
    );
  }
}
