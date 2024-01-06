import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBigImage extends StatelessWidget {
  const CardBigImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 230,
      decoration: const ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage("https://placehold.jp/390x253.png"),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x2B000000),
            blurRadius: 13,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}
