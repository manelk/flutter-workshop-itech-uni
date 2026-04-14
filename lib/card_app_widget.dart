import 'package:flutter/material.dart';

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
              Text("This is a title"),
              Text("This is a title"),
              // Image.asset("assets/image1.jpeg"),
              Image.network(
                "https://ies.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
