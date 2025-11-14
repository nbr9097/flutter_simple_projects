import 'package:flutter/material.dart';
import 'views/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Word Sprint',
      home: StartScreen(),
    );
  }
}
