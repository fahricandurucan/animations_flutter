import 'package:flutter/material.dart';

class AnimatedCrosFadeExample extends StatefulWidget {
  const AnimatedCrosFadeExample({super.key});

  @override
  State<AnimatedCrosFadeExample> createState() => _AnimatedCrosFadeExampleState();
}

class _AnimatedCrosFadeExampleState extends State<AnimatedCrosFadeExample> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedCrosFade"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: AnimatedCrossFade(
            firstChild: firstWidget(),
            secondChild: secondWidget(),
            crossFadeState: isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            duration: const Duration(seconds: 1),
          ),
        ),
      ),
    );
  }

  Widget firstWidget() {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Text(
        "HELLO",
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget secondWidget() {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green[300],
        borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
      child: Text(
        "GOODBYE",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
