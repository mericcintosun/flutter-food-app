import 'package:figmatasarim/home_page/homepage.dart';
import 'package:figmatasarim/intro_page/intro_page.dart';
import 'package:figmatasarim/profile_page/profile_page.dart';
import 'package:figmatasarim/verify_page/verify_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: IntroPage());
  }
}
