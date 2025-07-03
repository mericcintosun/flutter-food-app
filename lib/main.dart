import 'package:figmatasarim/pin_page/pin_page.dart';
import 'package:figmatasarim/verify_page/verify_page.dart';
import 'package:figmatasarim/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PinPage(),
    );
  }
}
