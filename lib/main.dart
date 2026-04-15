import 'package:flutter/material.dart';
import 'widgets/card_app_widget.dart';
import 'widgets/home_screen.dart';
import './data/apod_data.dart';

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
        body: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return CardAppWidget(
              title: listItems[index].title,
              image: listItems[index].url,
              date: listItems[index].date,
            );
          },
        ),
      ),
    );
  }
}
