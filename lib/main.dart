import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0A12),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0A12),
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
