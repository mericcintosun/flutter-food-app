import 'package:figmatasarim/welcome_page/widgets/buttons.dart';
import 'package:figmatasarim/welcome_page/widgets/ovenly_widget.dart';
import 'package:figmatasarim/verify_page/verify_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WelcomePage());
}

class WelcomePage
    extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() =>
      _WelcomePageState();
}

class _WelcomePageState
    extends State<WelcomePage> {
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:
            false,
        title: Row(
          mainAxisAlignment:
              MainAxisAlignment
                  .spaceBetween,
          children: [
            Row(
              children: [
                // Logo
                Image.asset(
                  'assets/welcomepage_assets/logo.png',
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 25,
                  child: Image.asset(
                    "assets/welcomepage_assets/Ovenly.png",
                  ),
                ),
              ],
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value:
                      selectedLanguage,
                 
                  items:
                      <String>[
                        'English',
                        'Turkish',
                      ].map<
                        DropdownMenuItem<
                          String
                        >
                      >((String value) {
                        return DropdownMenuItem<
                          String
                        >(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              color: Colors
                                  .grey,
                              fontSize:
                                  16,
                            ),
                          ),
                        );
                      }).toList(),
                  onChanged:
                      (
                        String?
                        newValue,
                      ) {
                        setState(() {
                          selectedLanguage =
                              newValue!;
                        });
                      },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(
            20.0,
          ),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              Spacer(),
              OvenlyWidget(),
              Spacer(),
              Padding(
                padding:
                    const EdgeInsets.only(
                      bottom: 60,
                    ),
                child: Buttons(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
