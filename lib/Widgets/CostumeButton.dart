
import 'package:flutter/material.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton({
    super.key, required this.txt, required this.clr,required this.icon
  });

  final String txt;
  final Color clr;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(13),
         color:  clr,
        ),
        child: Center(
          child: Text(txt,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),
                ),
        ),)
        
    );
  }
}
