import 'package:flutter/material.dart';

import '../apod_data.dart';

// new widget to display a text as a title and a description and image
class CardAppWidget extends StatelessWidget {
  const CardAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App bar")),
      body: SizedBox(
        // To get the full screen size in Flutter, use MediaQuery.sizeOf(context).
        // This method returns the dimensions of the application window in logical pixels.
        // OPTION 1
        width: MediaQuery.sizeOf(context).width,

        // OPTION 2 : TEST IT OUT
        //  width: 200,
        child: Card(
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Text(listItems[0].title),
              Text(listItems[0].date),
              // Image.asset("assets/image1.jpeg"),
              Image.network(
                listItems[0].url,
                errorBuilder:
                    (
                    BuildContext context,
                    Object error,
                    StackTrace? stackTrace,
                    ) {
                  return Image.asset("assets/image1.jpeg");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
