import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);
  Color _color = Colors.redAccent;

  void onChangeColor() {
    final random = Random();
    setState(() {
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _width = random.nextInt(300).toDouble() + 70;
      _height = random.nextInt(300).toDouble() + 70;
      _borderRadius = BorderRadius.circular(80);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedScreen'),
        ),
        body: Center(
          child: Container(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => onChangeColor(),
            child: const Icon(
              Icons.play_circle_outline,
              size: 40,
            )));
  }
}
