import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthenticationSignUp extends StatefulWidget {
  const AuthenticationSignUp({Key? key, required this.onClickedSignIn})
      : super(key: key);

  final VoidCallback onClickedSignIn;

  @override
  State<AuthenticationSignUp> createState() => _AuthenticationSignUpState();
}

class _AuthenticationSignUpState extends State<AuthenticationSignUp> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(top: 45, left: 20),
        child: Text("Create Your Account",
            style: TextStyle(
                color: Color(0xFF0B2E40),
                fontSize: 28,
                fontWeight: FontWeight.bold)),
      ),
      const SizedBox(
        height: 15,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text("Please Enter Your Credentials in the Form Below..!",
            style: TextStyle(
              color: Color(0xFF7E7B7B),
              fontSize: 16,
            )),
      ),
      const SizedBox(
        height: 70,
      ),
      const Padding(
        padding: EdgeInsets.all(8),
        child: Text("User-Name",
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
            controller: userNameController,
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
        height: 15,
      ),
      const Padding(
        padding: EdgeInsets.all(8),
        child: Text("E-Mail",
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
            controller: emailController,
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
        height: 15,
      ),
      const Padding(
        padding: EdgeInsets.all(8),
        child: Text("Password",
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
            controller: passwordController,
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
        height: 15,
      ),
      const Padding(
        padding: EdgeInsets.all(8),
        child: Text("Phone-Number",
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
            controller: phoneNumberController,
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
        height: 65,
      ),
      Center(
        child: Container(
          width: 370,
          height: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: ElevatedButton(
              onPressed: signUp,
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF244395),
              ),
              child: const Text("SIGN UP"),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 90,
      ),
      Center(
        child: RichText(
            text: TextSpan(
                text: 'Already have an Account?',
                style: const TextStyle(color: Color(0xFF0B2E40), fontSize: 16),
                children: <TextSpan>[
              TextSpan(
                  text: ' Sign In',
                  recognizer: TapGestureRecognizer()
                    ..onTap = widget.onClickedSignIn,
                  style: const TextStyle(
                      color: Color(0xFF244395),
                      fontSize: 16,
                      fontWeight: FontWeight.bold))
            ])),
      )
    ])));
  }
}
