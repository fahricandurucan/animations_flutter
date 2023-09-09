import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  const Animation1({super.key});

  @override
  State<Animation1> createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: AnimatedContainer(
            alignment: isSelected ? Alignment.topCenter : Alignment.center,
            width: isSelected ? 100 : 200,
            height: isSelected ? 300 : 200,
            color: isSelected ? Colors.deepPurple : Colors.amber,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: isSelected
                ? const Text(
                    "Yellow",
                    style: TextStyle(color: Colors.amber),
                  )
                : const Text(
                    "Purple",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
          ),
        ),
      ),
    );
  }
}
