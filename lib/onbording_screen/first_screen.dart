import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "lib/onbording_screen/assets/images/logo.png",
          width: 200,
        ),
       const Text(
          "No Ads\n Listing music",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 6, 108, 10)),
        )
      ],
    );
  }
}
