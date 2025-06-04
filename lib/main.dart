import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/upload_screen.dart';
import 'screens/result_screen.dart';
import 'screens/onboarding_screen.dart'; // tambahkan ini

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduScan AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      // ganti home jadi onboarding dulu
      home: const OnboardingScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/upload': (context) => const UploadScreen(),
        '/result': (context) => const ResultScreen(),
      },
    );
  }
}
