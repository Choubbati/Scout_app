import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scout_app/Auth/LoginPage.dart';
import 'package:scout_app/firebase_options.dart';
import 'package:scout_app/onbording_screen/first_screen.dart';
import 'package:scout_app/onbording_screen/onbording_screen.dart';

import 'Auth/Sign_Up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Scout_app());
}

class Scout_app extends StatelessWidget {
  const Scout_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      routes: {
        "Sign_Up" : (context)=> Sign_Up(),
        "Sign_In" : (context)=> LoginPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      ),
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: OnbordingScreen(),
      ),
    );
  }
}