import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:food_ordering_app/firebase_options.dart';
import 'package:food_ordering_app/provider/counter_provider.dart';
import 'package:food_ordering_app/src/app.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterNativeSplash.removeAfter(initialization);

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => Counter())],
    child: const MyApp(),
  ));
}

Future initialization(BuildContext context) async {
  await Future.delayed(Duration(seconds: 3));
}
