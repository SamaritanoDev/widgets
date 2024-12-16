import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets/widgets/custom%20painter/curvo_painter.dart';
import 'package:widgets/widgets/custom%20painter/otra_curva_painter.dart';

class CustomPainterScreen extends StatelessWidget {
  const CustomPainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Stack(
          children: [
            //no se ve el otro custom porque esta dentro de un Stack
            PrimerCurvaPainter(),
            SegundoCurvaPainter(),
          ],
        ),
      ),
    );
  }
}

class PrimerCurvaPainter extends StatelessWidget {
  const PrimerCurvaPainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.pinkAccent,
          width: 200,
          height: 180,
          child: CustomPaint(
            painter: CurvaPainter(),
          ),
        ),
      ),
    );
  }
}

class SegundoCurvaPainter extends StatelessWidget {
  const SegundoCurvaPainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          child: CustomPaint(
            size: const Size(200, 180),
            painter: OtraCurvaPainter(),
          ),
        ),
      ),
    );
  }
}
