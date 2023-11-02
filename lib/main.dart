import 'package:flutter/material.dart';
import 'package:samplefimga/theme/light_theme.dart';
import 'package:samplefimga/view/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: const SplashScreen(),
    );
  }
}