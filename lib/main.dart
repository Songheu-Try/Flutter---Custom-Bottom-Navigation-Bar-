import 'package:bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
// import 'package:my_first_app/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}

