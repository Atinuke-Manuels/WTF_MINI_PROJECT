import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:blend/features/forgot_password/page/forgot_password_page.dart';
import 'package:blend/features/home/page/home_page.dart';
import 'package:blend/features/home/page/bottom_navigation.dart';
import 'package:blend/features/message/page/message_section.dart';
import 'package:blend/features/profile/page/profile_section.dart';
import 'package:blend/features/registration/page/registration_page.dart';
import 'package:blend/features/pages/splash_screen.dart';
import 'package:blend/features/settings/page/settings_section.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'features/search/pages/search_section.dart';
import 'firebase_options.dart';

import 'features/login/page/login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/LoginPage': (context) => const LoginPage(),
        '/RegistrationPage': (context) => const RegistrationPage(),
        '/ForgotPasswordPage': (context) => const ForgotPasswordPage(),
        '/BottomNavigation': (context) => const BottomNavigation(),
        '/HomePage': (context) => const HomePage(),
        '/MessageSection': (context) => const MessageSection(),
        '/ProfileSection': (context) => const ProfileSection(),
        '/SettingsSection': (context) => const SettingsSection(),
        '/SearchSection': (context) => const SearchSection(),
      });
  }
}
