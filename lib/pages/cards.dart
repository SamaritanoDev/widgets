import 'package:flutter/material.dart';
import 'package:widgets/widgets/widgets.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: const Text('Cards'),
      ),
      body: const Center(
        child: CardBox(
            title: 'Github',
            subtitle: '@Samaritano.dev',
            width: double.infinity,
            height: 200),
      ),
    );
  }
}
