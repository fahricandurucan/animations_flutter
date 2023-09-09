import 'package:flutter/material.dart';

class AnimatedTextStyleExample extends StatefulWidget {
  const AnimatedTextStyleExample({super.key});

  @override
  State<AnimatedTextStyleExample> createState() => _AnimatedTextStyleExampleState();
}

class _AnimatedTextStyleExampleState extends State<AnimatedTextStyleExample> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "AnimatedDefaultTextStyle",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            style: isSelected
                ? TextStyle(fontSize: 90, color: Colors.blue[300])
                : TextStyle(fontSize: 60, color: Colors.red[300]),
            duration: const Duration(milliseconds: 600),
            child: const Text("Flutter"),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: const Text("Switch")),
        ],
      )),
    );
  }
}
