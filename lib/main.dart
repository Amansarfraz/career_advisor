import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/get_started_screen.dart';
import 'screens/login_screen.dart';
import 'screens/career_assessment_screen.dart';
import 'screens/career_recommendation_screen.dart';
import 'screens/career_details_screen.dart';
import 'screens/setting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // Access the state anywhere to toggle theme
  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),

      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,

      initialRoute: '/',

      routes: {
        '/': (context) => const SplashScreen(),
        '/get_started_screen': (context) => const GetStartedScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/career_assessment_screen': (context) =>
            const CareerAssessmentScreen(),
        '/career_recommendation_screen': (context) =>
            const CareerRecommendationScreen(
              matchPercentage: 85,
              careerName: "Software Engineer",
              shortExplanation: "Based on your answers this career suits you.",
            ),
        '/career_details_screen': (context) =>
            const CareerDetailsScreen(careerName: " widget.careerName"),
        '/setting_screen': (context) => SettingScreen(
          isDark: MyApp.of(context)!.isDarkMode,
          onToggle: MyApp.of(context)!.toggleTheme,
        ),
      },
    );
  }
}
