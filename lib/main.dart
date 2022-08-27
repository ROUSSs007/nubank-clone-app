import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nubank_clone_app/constants.dart';
import 'package:nubank_clone_app/pages/home/main.dart';
//import 'package:nubank_clone_app/pages/lockScreen/lock_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            color: Colors.black87,
          ),
          labelMedium: TextStyle(
            color: Color(0xFF666A6D),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/lottie/56875-white-loader.json'),
      nextScreen: const HomePage(),
      backgroundColor: primaryColor,
      splashIconSize: 250,
      duration: 3000,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
