import 'package:flutter/material.dart';

class OvenlyWidget
    extends StatelessWidget {
  const OvenlyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Image.asset(
              "assets/welcomepage_assets/mixed-pizza-with-various-ingridients.png",
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Welcome to Ovenly",
            style: TextStyle(
              fontWeight:
                  FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 15),
          Text(
            textAlign: TextAlign.center,
            "Your favorite pizzas, freshly baked and delivered to your doorstep with love and care!",
            style: TextStyle(
              fontSize: 16,
              fontWeight:
                  FontWeight.w400,
              color:
                  const Color.fromARGB(
                    255,
                    132,
                    130,
                    130,
                  ),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Row(
              mainAxisSize:
                  MainAxisSize.min,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(
                          255,
                          165,
                          84,
                          54,
                        ),
                    borderRadius:
                        BorderRadius.circular(
                          100,
                        ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(
                          255,
                          204,
                          204,
                          204,
                        ),
                    borderRadius:
                        BorderRadius.circular(
                          100,
                        ),
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(
                          255,
                          204,
                          204,
                          204,
                        ),
                    borderRadius:
                        BorderRadius.circular(
                          100,
                        ),
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(
                          255,
                          204,
                          204,
                          204,
                        ),
                    borderRadius:
                        BorderRadius.circular(
                          100,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
