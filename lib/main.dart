import 'package:flutter/material.dart';
import 'widgets/card_app_widget.dart';
import 'widgets/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      // step 2: call the widget
      home: Scaffold(
        appBar: AppBar(title: Text("App bar")),
        body: ListView(
          children: [
            CardAppWidget(title: "hello", image: "", date: ""),
            CardAppWidget(
              title: "Hello item 2",
              image:
                  "https://apod.nasa.gov/apod/image/2604/CometR3_Hamdi_960.jpg",
              date: "",
            ),
            CardAppWidget(title: "hello", image: "", date: ""),
          ],
        ),
      ),
    );
  }
}
