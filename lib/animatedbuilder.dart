import 'dart:math' as math;

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [AnimatedBuilder].

void main (){
  runApp(DevicePreview(
      builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: true,
          useInheritedMediaQuery: true,
          home: AnimatedBuilderExampleApp(),);
      }
  ));
}

class AnimatedBuilderExampleApp extends StatelessWidget {
  const AnimatedBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedBuilderExample(),
    );
  }
}

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

/// AnimationControllers can be created with `vsync: this` because of
/// TickerProviderStateMixin.
class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        width:100,
        height: 200.0,
        color: Colors.yellow,
        child: const Center(
          child: Text('jubair is 9'),
        ),
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: child,
        );
      },
    );
  }
}
