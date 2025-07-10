import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              "assets/bottomnavigationbar_assets/homeicon.png",
            ),
          ),

          Image.asset("assets/bottomnavigationbar_assets/menuicon.png"),
          Image.asset("assets/bottomnavigationbar_assets/bagicon.png"),
          Image.asset("assets/bottomnavigationbar_assets/favoriteicon.png"),
          Image.asset("assets/bottomnavigationbar_assets/usericon.png"),
        ],
      ),
    );
  }
}
