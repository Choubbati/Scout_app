// import 'package:flutter/material.dart';
// import 'package:scout_app/Widgets/CostumeButton.dart';
// import 'package:scout_app/Widgets/CostumeTextField.dart';

import 'package:flutter/material.dart';
import 'package:scout_app/Widgets/CostumeButton.dart';
import 'package:scout_app/Widgets/CostumeTextField.dart';

class LoginPage extends StatefulWidget {
  static String id = 'Sign_In';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Center(
                child: Image.asset(
              "assets/images/logo.png",
              width: 200,
            )),
            const SizedBox(
              height: 30,
            ),
            CostumeTextField(
              icons: Icon(Icons.email_outlined),
              text: 'Email',
              obscureText: false,
              txt: 'Email',
              icon: IconButton(
                  onPressed: null, icon: Icon(Icons.person_outline_outlined)),
            ),
            CostumeTextField(
              text: 'Password',
              txt: 'Password',
              icon: IconButton(
                  onPressed: _togglePasswordVisibility,
                  icon: Icon(
                      !_obscureText ? Icons.visibility : Icons.visibility_off)),
              icons: Icon(Icons.fingerprint_sharp),
              obscureText: _obscureText,
            ),
            const SizedBox(height: 10),
            const CostumeButton(
                txt: 'Login',
                clr: Color.fromARGB(255, 110, 1, 152),
                icon: Icon(Icons.login)),
            SizedBox(height: 5),
            Center(
                child: Text(
              "Or",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Sign-in, with Google",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          "assets/images/google.png",
                          width: 25,
                          height: 25,
                        ),

                        // Image(image: AssetImage('assets/images/igonGoogle.png'))
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 15,
            ),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "Sign_Up");
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 110, 1, 152),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Image(image: AssetImage('assets/images/igonGoogle.png'))
          ],
        ),
      ),
    );
  }
}



// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Center(
//         child: ListView(
//           children: [
//             SizedBox(
//               height: 50,
//             ),
//             Center(
//                 child: Image.asset(
//               "assets/images/logo.png",
//               width: 200,
//             )),
//             const SizedBox(
//               height: 30,
//             ),
//             Center(
//                 child: Text(
//               'Login',
//               style: TextStyle(
//                   color: const Color.fromARGB(255, 110, 1, 152),
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold),
//             )),
//             const SizedBox(
//               height: 10,
//             ),
//             const CostumeTextField(
//               icons: Icon(Icons.email_outlined),
//               text: 'Email',
//               obscureText: false,
//               txt: 'Email',
//               icon: IconButton(onPressed: null, icon: Icon(Icons.person_outline_outlined)),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             const CostumeTextField(
//               icons: Icon(Icons.fingerprint_outlined),
//               icon:
//             // Icons.remove_red_eye_outlined
              
//                IconButton(onPressed: null, icon: Icon()),
              
//               text: 'Password',
//               obscureText: true,
//               txt: 'Password',
//             ),
//             CostumeButton()

            
//           ],
//         ),
//       ),
//     );
//   }
// }

