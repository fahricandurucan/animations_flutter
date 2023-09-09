import 'package:flutter/material.dart';

class ScaleTransitionExample extends StatefulWidget {
  const ScaleTransitionExample({super.key});

  @override
  State<ScaleTransitionExample> createState() => _ScaleTransitionExampleState();
}

class _ScaleTransitionExampleState extends State<ScaleTransitionExample>
    with TickerProviderStateMixin {
  late final AnimationController animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat(reverse: false);

  late final Animation<double> animation =
      CurvedAnimation(parent: animationController, curve: Curves.easeIn);

  @override
  Widget build(BuildContext context) {
    // animationController.status == AnimationStatus.completed
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Scale Transition"),
      ),
      body: Center(
        child: ScaleTransition(
          scale: animation,
          child: Image.asset("images/icon.png"),
        ),
      ),
    );
  }
}
