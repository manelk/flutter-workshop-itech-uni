import 'package:flutter/material.dart';

import '../apod_data.dart';

// new widget to display a text as a title and a description and image
class CardAppWidget extends StatelessWidget {
  // Step 1: Add attributes to CardAppWidget
  final String? title;
  final String? date;
  final String? image;

  // Step 2: called them in the instructor
  const CardAppWidget({super.key, this.title, this.date, this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 400,
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Column(
          children: [
            Text(title ?? "default value"),
            Text(date ?? "default value"),
            // Image.asset("assets/image1.jpeg"),
            Image.network(
              height: 100,
              image!,
              errorBuilder:
                  (BuildContext context, Object error, StackTrace? stackTrace) {
                    return Image.asset("assets/image1.jpeg");
                  },
            ),
          ],
        ),
      ),
    );
  }
}
