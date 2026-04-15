import 'package:flutter/material.dart';

// new widget to display a text as a title and a description and image
class CardAppWidget extends StatelessWidget {
  // Step 1: Add attributes to CardAppWidget
  final String title;
  final String? date;
  final String? image;

  // Step 2: called them in the instructor
  const CardAppWidget({
    super.key,
    this.title = "Default value",
    this.date,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.4,
      width: 400,
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Column(
          children: [
            Text(title),
            Text(date ?? "default "),
            // Image.asset("assets/image1.jpeg"),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                // height: MediaQuery.sizeOf(context).height * 0.2,
                // width: 200,
                image!,
                errorBuilder:
                    (
                      BuildContext context,
                      Object error,
                      StackTrace? stackTrace,
                    ) {
                      return Image.asset("assets/image1.jpeg");
                    },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
