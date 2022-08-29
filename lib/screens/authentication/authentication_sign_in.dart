import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/screens/authentication/forget_password.dart';

class AuthenticationSignIn extends StatefulWidget {
  const AuthenticationSignIn({Key? key, required this.onClickedSignUp})
      : super(key: key);

  final VoidCallback onClickedSignUp;

  @override
  State<AuthenticationSignIn> createState() => _AuthenticationSignInState();
}

class _AuthenticationSignInState extends State<AuthenticationSignIn> {
  late final TextEditingController emailController;

  late final TextEditingController passwordController;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future signIn() async {}

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
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
            Form(
              key: formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        child: TextFormField(
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
                        child: TextFormField(
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
                  ]),
            ),
            ListTile(
              trailing: TextButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ForgetPassword();
                        },
                      )),
                  child: const Text(
                    "Forget Password",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 370,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim());
                      } on FirebaseAuthException catch (e) {
                        print(e);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF244395),
                    ),
                    child: const Text("SIGN IN"),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 225,
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
                          recognizer: TapGestureRecognizer()
                            ..onTap = widget.onClickedSignUp,
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
