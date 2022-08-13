import 'package:flutter/material.dart';
import 'package:widgets/widgets/buttom_custom.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: const Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
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
  const _ButtonFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.pink[800])),
      child: const Text('Sigueme'),
    );
  }
}
