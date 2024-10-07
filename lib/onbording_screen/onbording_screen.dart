import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scout_app/onbording_screen/first_screen.dart';
import 'package:scout_app/onbording_screen/second_screen.dart';
import 'package:scout_app/onbording_screen/thired_screen.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  PageController controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              controller: controller,
              children: [FirstScreen(), SecondScreen(), ThiredScreen()],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CostumIndicator(active: index == 0),
              SizedBox(
                width: 5,
              ),
              CostumIndicator(active: index == 1),
              SizedBox(
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
                InkWell(child: Text(index==2?"Register":"Skip",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                InkWell(
                  onTap: () {
                    controller.animateToPage(index + 1, duration: Duration(milliseconds: 250), curve: Curves.linear);
                  },
                    child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                         color: Color.fromARGB(255, 6, 108, 10),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(index==2?"Login":"Next",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)))
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
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: active ? Color.fromARGB(255, 6, 108, 10) : Colors.grey),
      width: active ? 30 : 10,
      height: 10,
    );
  }
}
