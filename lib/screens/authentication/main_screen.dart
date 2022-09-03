import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/admin/admin_panel.dart';
import 'package:food_ordering_app/screens/authentication/auth_screen.dart';
import 'package:food_ordering_app/screens/my_bottom_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return const Center(child: Text("Something went wrong"));
          } else if (snapshot.hasData) {
            return MyBottomNavigationBar();
          } else {
            return AuthScreen();
            //AuthScreen();
          }
        },
      ),
    );
  }
}
