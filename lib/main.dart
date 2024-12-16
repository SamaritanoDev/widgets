import 'package:flutter/material.dart';
import 'package:widgets/pages/custom_painter_page.dart';
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
      theme: ThemeData(colorSchemeSeed: Colors.pinkAccent),
      routes: {
        'mis widgets': (context) => const WidgetsCustomScreen(),
        'inicio': (context) => const HomeScreen(),
        'cards': (context) => const CardsScreen(),
        'buttons': (context) => const ButtonScreen(),
        'dropdown': (context) => const DropdownPage(),
        'customs': (context) => const CustomPainterScreen(),
      },
    );
  }
}
