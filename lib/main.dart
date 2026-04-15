import 'package:application_test/widgets/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/card_app_widget.dart';
import './data/apod_data.dart';
import 'widgets/counter_widget.dart';

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
      // home: BottomNavigationBarExampleApp(),
      home: Scaffold(
        appBar: AppBar(title: Text("App bar")),
        // body: BottomNavigationBarExampleApp(),
        body: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Within the `FirstRoute` widget:
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const CounterScreen(),
                  ),
                );
              },
              child: CardAppWidget(
                title: listItems[index].title,
                image: listItems[index].url,
                date: listItems[index].date,
              ),
            );
          },
        ),
      ),
    );
  }
}
