import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthenticationSignUp extends StatelessWidget {
  const AuthenticationSignUp({Key? key}) : super(key: key);

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
        height: 40,
      ),

      // TODO: change the icons to real icon
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFF244395), width: 1.5)),
            child: IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.facebookF,
                  color: Color(0xFF244395),
                )),
          ),
          const SizedBox(
            width: 40,
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFF244395), width: 1.5)),
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
        height: 30,
      ),
      const Center(
        child: Text("OR",
            style: TextStyle(
                color: Color(0xFF0B2E40),
                fontSize: 16,
                fontWeight: FontWeight.bold)),
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
                onPressed: () {},
                child: Text("SIGN UP"),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF244395),
                )),
          ),
        ),
      ),
      const SizedBox(
        height: 40,
      ),

      Center(
        child: RichText(
            text: TextSpan(
                text: 'Already have an Account?',
                style: const TextStyle(color: Color(0xFF0B2E40), fontSize: 16),
                children: <TextSpan>[
              TextSpan(
                  text: ' Sign In',
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  style: const TextStyle(
                      color: Color(0xFF244395),
                      fontSize: 16,
                      fontWeight: FontWeight.bold))
            ])),
      )
    ])));
  }
}
