import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CounterScreen> {
  int counter = 0;
  String name = "University";

  void increment() {
    setState(() {
      counter++;
      name = "University Edited";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hello $counter"),
        Text("Hello $name"),
        TextButton(onPressed: increment, child: Text("Click to increment!")),
      ],
    );
  }
}
