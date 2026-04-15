import 'package:flutter/material.dart';
import '../design_color.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CounterScreen> {
  int counter = 0;
  String name = "University";

  // new style using google font package

  final styleNew = GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 20);

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
        Text(
          "Hello $counter",
          style: TextStyle(color: DesignColor().primaryColor, fontSize: 20),
        ),
        // Method 1
        Text("Hello $name", style: styleNew),
        // Method 2
        Text(
          "Hello $name",
          style: GoogleFonts.arbutus(fontStyle: FontStyle.italic, fontSize: 20),
        ),
        TextButton(onPressed: increment, child: Text("Click to increment!")),
      ],
    );
  }
}
