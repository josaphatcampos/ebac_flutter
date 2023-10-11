import 'dart:math';

import 'package:flutter/material.dart';

class ExercicioModulo9 extends StatefulWidget {
  const ExercicioModulo9({super.key});

  @override
  State<ExercicioModulo9> createState() => _ExercicioModulo9State();
}

class _ExercicioModulo9State extends State<ExercicioModulo9> {
  final Map<String, double> _circleposition = {"top": 40, "left": 40};
  final Map<String, double> _circle2position = {"top": 500, "left": 30};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exercício Modulo 9',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Stack(
        children: [
          Positioned(
            top: _circleposition['top']!,
            left: _circleposition['left']!,
            child: GestureDetector(
              onPanUpdate: (detail) {
                _circleposition['top'] =
                    max(0, _circleposition['top']! + detail.delta.dy);
                _circleposition['left'] =
                    max(0, _circleposition['left']! + detail.delta.dx);
                setState(() {});
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.redAccent.withOpacity(0.8)),
              ),
            ),
          ),
          Positioned(
            top: _circle2position['top']!,
            left: _circle2position['left']!,
            child: GestureDetector(
              onPanUpdate: (detail) {
                _circle2position['top'] =
                    max(0, _circle2position['top']! + detail.delta.dy);
                _circle2position['left'] =
                    max(0, _circle2position['left']! + detail.delta.dx);
                setState(() {});
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.green.withOpacity(0.8)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
