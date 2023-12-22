import 'package:flutter/material.dart';

class WidgetsCustomScreen extends StatelessWidget {
  const WidgetsCustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis widgets'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
