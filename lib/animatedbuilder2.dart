import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_animated_builder_demo/splash_screen.dart';

void main() {
  runApp(animatedbuilder());
}

class animatedbuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: animatedbuilder(),
    );
  }
}

class AnimatedBuilderDemo extends StatefulWidget {
  @override
  _AnimatedBuilderDemoState createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =  AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,
        title: Text("Flutter AnimatedBuilder Widget Demo"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 300.0,
            height: 200.0,
            child: Image.asset("assets/logo.png"),
          ),
          builder: (BuildContext context, Widget child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}