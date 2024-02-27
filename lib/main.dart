import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:blend/features/registration/page/registration_page.dart';
import 'package:blend/features/pages/splash_screen.dart';
import 'package:flutter/material.dart';

import 'features/login/page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blend',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/blend_logo.png'),
        duration: 2000,
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Color(0xFF00A6A3),
        nextScreen: SplashScreen(),
      ),
      routes: {
        '/HomePage': (context) => const LoginPage(),
        '/RegistrationPage': (context) => const RegistrationPage()
      });
  }
}
