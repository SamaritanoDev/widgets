import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? icon;
  final double width;
  final double height;
  const CardBox(
      {super.key,
      required this.title,
      required this.subtitle,
      this.icon,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (_, index) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              width: width,
              height: height,
              decoration: _cardBorders(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(icon),
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const Text(
                    'Sigueme',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardBorders() => BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10,
            offset: Offset(0, 7),
          ),
        ],
      );
}
