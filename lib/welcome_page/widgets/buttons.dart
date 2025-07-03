import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 380,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(
                      255,
                      165,
                      84,
                      54,
                    ),
                foregroundColor: Colors
                    .white, // Yazı rengi
                padding:
                    const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ), // İç boşluk
                shape: RoundedRectangleBorder(
                  // Köşe yuvarlama
                  borderRadius:
                      BorderRadius.circular(
                        50,
                      ),
                ),
                elevation:
                    0, // Gölgeyi kaldırmak için
              ),
              onPressed: () {},
              child: Text(
                "Log in",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 380,
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(),
              onPressed: () {},
              child: Text(
                "Sign me up",
                style: TextStyle(
                  color:
                      const Color.fromARGB(
                        255,
                        165,
                        84,
                        54,
                      ),
                  fontSize: 16,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
