import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Image.asset('assets/homepage_assets/logo.png')),
            Container(child: Image.asset('assets/homepage_assets/Ovenly.png')),
          ],
        ),
      ),
    );
  }
}
