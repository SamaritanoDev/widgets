import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    IconData myIconArrow = Icons.keyboard_arrow_right;

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
                myIconArrow,
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
                myIconArrow,
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
                myIconArrow,
                color: color.primary,
                size: 40,
              ),
              onPressed: () => Navigator.pushNamed(context, 'mis widgets'),
            ),
          ),
          ListTile(
            title: const Text('Dropdown'),
            subtitle: const Text('Mis Dropdowns'),
            trailing: IconButton(
              icon: Icon(
                myIconArrow,
                color: color.primary,
                size: 40,
              ),
              onPressed: () => Navigator.pushNamed(context, 'dropdown'),
            ),
          ),
        ],
      ),
    );
  }
}
