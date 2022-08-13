import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final IconData? icon;
  final double width;
  final double height;

  const ButtonCustom(
      {Key? key,
      required this.title,
      this.icon,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: Colors.white,
            ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
