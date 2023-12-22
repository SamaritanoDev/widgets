import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.primary,
        title: const Text('Widgets'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Card'),
            subtitle: const Text('Tarjeta con BoxDecoration'),
            trailing: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: color.primary,
                size: 40,
              ),
              onPressed: () => Navigator.pushNamed(context, 'cards'),
            ),
          ),
          ListTile(
            title: const Text('Buttons'),
            subtitle: const Text('Botones con Elevate button y sin'),
            trailing: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: color.primary,
                size: 40,
              ),
              onPressed: () => Navigator.pushNamed(context, 'buttons'),
            ),
          ),
          ListTile(
            title: const Text('Mis widgets customizados'),
            subtitle: const Text('buscador, etc'),
            trailing: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: color.primary,
                size: 40,
              ),
              onPressed: () => Navigator.pushNamed(context, 'mis widgets'),
            ),
          ),
        ],
      ),
    );
  }
}
