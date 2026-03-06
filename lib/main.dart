import 'package:flutter/material.dart';
import 'screens/splash_screen.dart'; // apne folder ke hisaab se adjust karo
import 'screens/get_started_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/get_started_screen': (context) => const GetStartedScreen(),
        '/login_screen': (context) => const LoginScreen(),
      },
    );
  }
}
