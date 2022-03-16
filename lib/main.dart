import 'package:bottom_nav/ui/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Nav',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MainScreen(),
    );
  }
}
