import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scout_app/constante.dart';
import 'package:scout_app/onbording_screen/first_screen.dart';
import 'package:scout_app/onbording_screen/second_screen.dart';
import 'package:scout_app/onbording_screen/thired_screen.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  int index = 0;
  bool isOut = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: width(context),
            height: height(context) * .5,
            child: AnimatedScale(
              scale: isOut ? 0 : 1,
              duration: Duration(milliseconds: 250),
              child: Image.asset(images[index]),
            ),
          ),
          Expanded(
              child: Stack(
            children: [
              
              AnimatedPositioned(
                left: isOut?width(context)+100:width(context)*.28,
                child: Text(title[index],textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 110, 1, 152)),),
                duration: Duration(milliseconds: 250),
              )
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CostumIndicator(active: index == 0),
              const SizedBox(
                width: 5,
              ),
              CostumIndicator(active: index == 1),
              const SizedBox(
                width: 5,
              ),
              CostumIndicator(active: index == 2),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    child: Text(
                  index == 2 ? "Register" : "Skip",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )),
                InkWell(
                    onTap: () {
                      setState(() {
                        isOut = !isOut;
                      });
                      Timer(Duration(milliseconds: 300), () {
                        index = index > 1 ? 0 : index + 1;
                        setState(() {
                          isOut = !isOut;
                        });
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 110, 1, 152),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          index == 2 ? "Login" : "Next",
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CostumIndicator extends StatelessWidget {
  final bool active;
  const CostumIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: active ? Color.fromARGB(255, 110, 1, 152) : Colors.grey),
      width: active ? 30 : 10,
      height: 10,
    );
  }
}

List images = [
  "lib/onbording_screen/assets/images/logo.png",
  "lib/onbording_screen/assets/images/MAJMO3A.png",
  "lib/onbording_screen/assets/images/bnowalid.png"
];

List title = [
  "No ads while \nlistening music",
  "Listen to \nmusic offline",
  "      share \nYour playlist"
];
