import 'package:flutter/material.dart';

class CostumeTextField extends StatefulWidget {
  const CostumeTextField({
    super.key, this.text,  this.txt, required this.icon, required this.icons, required this.obscureText
  });
  final text;
  final txt;
  final bool obscureText;
  final IconButton icon;
  final Icon icons;

  @override
  State<CostumeTextField> createState() => _CostumeTextFieldState();
}

class _CostumeTextFieldState extends State<CostumeTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          hintText: widget.text,
          prefixIcon: widget.icons,
          suffixIcon:widget.icon ,
          labelText: widget.txt,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13)
          )
        ),
      ),
    );
  }
}
