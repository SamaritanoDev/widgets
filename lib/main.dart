import 'package:flutter/material.dart';
import 'package:widgets/pages/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter widgets',
      initialRoute: 'inicio',
      routes: {
        'inicio': (context) => const HomeScreen(),
        'cards': (context) => const CardsScreen(),
      },
    );
  }
}
