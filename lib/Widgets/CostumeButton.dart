
import 'package:flutter/material.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(13),
         color: const Color.fromARGB(255, 110, 1, 152),
        ),
        child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
