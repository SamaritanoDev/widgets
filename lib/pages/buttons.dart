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
      body: Center(
        child: Container(
          child: const Stack(
            alignment: Alignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
            _ButtonFlutter(),
              SizedBox(height: 20),
              ButtonCustom(title: 'en tik tok', width: 150, height: 50),
              SizedBox(height: 20),
              MovableButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ButtonFlutter extends StatelessWidget {
  const _ButtonFlutter();

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

class MovableButton extends StatefulWidget {
  const MovableButton({super.key});

  @override
  State<MovableButton> createState() => _MovableButtonState();
}

class _MovableButtonState extends State<MovableButton> {
  double xPosition = 100.0;
  double yPosition = 100.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: xPosition,
          top: yPosition,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                xPosition += details.delta.dx;
                yPosition += details.delta.dy;
              });
            },
            child: FloatingActionButton(
              onPressed: () {
                // Acción del botón
              },
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ],
    );
  }
}
