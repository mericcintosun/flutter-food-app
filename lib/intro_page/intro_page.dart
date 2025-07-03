import 'package:figmatasarim/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';

class IntroPage
    extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const WelcomePage(),
            ),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              Container(
                child: Image.asset(
                  'assets/homepage_assets/logo.png',
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/homepage_assets/Ovenly.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
