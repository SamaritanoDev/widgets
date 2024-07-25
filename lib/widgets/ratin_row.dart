import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = const Color.fromARGB(255, 255, 230, 1);

    return Row(
      children: [
        Icon(Icons.star, color: color),
        // Text(
        //   place.rating.toString(),
        //   style: const TextStyle(
        //     fontFamily: "CB",
        //     color: Colors.white,
        //   ),
        // ),
      ],
    );
  }
}

class RatingBArROw extends StatelessWidget {
  const RatingBArROw({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = const Color.fromARGB(255, 255, 230, 1);

    return RatingBar.builder(
      initialRating: 3,
      itemCount: 5,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return Icon(Icons.star, color: color);
          case 1:
            return Icon(
              Icons.star,
              color: color,
            );
          case 2:
            return Icon(
              Icons.star,
              color: color,
            );
          case 3:
            return Icon(
              Icons.star,
              color: color,
            );
          case 4:
            return Icon(
              Icons.star,
              color: color,
            );
          default:
            return Container(); // Valor predeterminado
        }
      },
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
