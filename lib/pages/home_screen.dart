import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: const Text('Widgets'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Card'),
            subtitle: const Text('Tarjeta con BoxDecoration'),
            trailing: IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.redAccent,
                size: 40,
              ),
              onPressed: () => Navigator.pushNamed(context, 'cards'),
            ),
          ),
          ListTile(
            title: const Text('Buttons'),
            subtitle: const Text('Botones con Elevate button y sin'),
            trailing: IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.redAccent,
                size: 40,
              ),
              onPressed: () => Navigator.pushNamed(context, 'buttons'),
            ),
          ),
        ],
      ),
    );
  }
}
