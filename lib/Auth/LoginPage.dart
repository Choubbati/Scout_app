import 'package:flutter/material.dart';
import 'package:scout_app/Widgets/CostumeButton.dart';
import 'package:scout_app/Widgets/CostumeTextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
                child: Image.asset(
              "assets/images/logo.png",
              width: 200,
            )),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              'Login',
              style: TextStyle(
                  color: const Color.fromARGB(255, 110, 1, 152),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 10,
            ),
            const CostumeTextField(
              text: 'Email',
              obscureText: false,
              txt: 'Email',
              icon: Icon(Icons.email),
            ),
            const SizedBox(
              height: 5,
            ),
            const CostumeTextField(
              icon: Icon(Icons.lock),
              text: 'Password',
              obscureText: true,
              txt: 'Password',
            ),
            CostumeButton()

            
          ],
        ),
      ),
    );
  }
}
