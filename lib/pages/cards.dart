import 'package:flutter/material.dart';
import 'package:widgets/widgets/widgets.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.onPrimary,
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
