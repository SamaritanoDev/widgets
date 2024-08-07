import 'package:flutter/material.dart';
import 'package:widgets/widgets/buttom_custom.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.onPrimary,
        title: const Text('Buttons'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ButtonFlutter(),
            SizedBox(height: 20),
            ButtonCustom(title: 'en tik tok', width: 150, height: 50)
          ],
        ),
      ),
    );
  }
}

class _ButtonFlutter extends StatelessWidget {
  const _ButtonFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ElevatedButton(
      onPressed: () {},
      style:
          ButtonStyle(backgroundColor: WidgetStateProperty.all(color.surface)),
      child: Text(
        'Sigueme',
        style: TextStyle(color: color.onSurface),
      ),
    );
  }
}
