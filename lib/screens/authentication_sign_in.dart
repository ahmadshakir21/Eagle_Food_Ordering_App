import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthenticationSignIn extends StatelessWidget {
  const AuthenticationSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 45, horizontal: 20),
              child: Text("Welcome",
                  style: TextStyle(
                      color: Color(0xFF0B2E40),
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text("E-MAIL",
                  style: TextStyle(
                      color: Color(0xFF0B2E40),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Container(
                width: 370,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFD9D9D9),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text("PASSWORD",
                  style: TextStyle(
                      color: Color(0xFF0B2E40),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Container(
                width: 370,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFD9D9D9),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                width: 370,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("SIGN IN"),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF244395),
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text("OR",
                  style: TextStyle(
                      color: Color(0xFF0B2E40),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 50,
            ),
            // TODO: change the icons to real icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color(0xFF244395), width: 1.5)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.facebookF,
                        color: Color(0xFF244395),
                      )),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color(0xFF244395), width: 1.5)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                        color: Color(0xFF244395),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style:
                        const TextStyle(color: Color(0xFF0B2E40), fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Sign up',
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          style: const TextStyle(
                              color: Color(0xFF244395),
                              fontSize: 16,
                              fontWeight: FontWeight.bold))
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
