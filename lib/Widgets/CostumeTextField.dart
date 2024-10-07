import 'package:flutter/material.dart';

class CostumeTextField extends StatelessWidget {
  const CostumeTextField({
    super.key, this.text, required this.obscureText, this.txt, required this.icon,
  });
  final text;
  final txt;
  final bool obscureText;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: icon,
          labelText: txt,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13)
          )
        ),
      ),
    );
  }
}
