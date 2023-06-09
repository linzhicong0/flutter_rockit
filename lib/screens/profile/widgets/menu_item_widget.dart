import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function()? onTap;

  MenuItem({super.key, required this.text, this.onTap, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Visibility(
                visible: selected,
                child: Container(
                  height: 33,
                  width: 4,
                  color: const Color(0xFFFFA500),
                ),
              ),
              const SizedBox(
                width: 26,
              ),
              Container(
                alignment: Alignment.center,
                height: 33,
                child: Text(
                  text,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: selected ? FontWeight.w800 : FontWeight.w400,
                      fontSize: selected ? 18 : 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
