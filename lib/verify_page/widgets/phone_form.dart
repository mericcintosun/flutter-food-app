import 'package:flutter/material.dart';

class PhoneNumberForm
    extends StatefulWidget {
  PhoneNumberForm({super.key});

  @override
  State<PhoneNumberForm>
  createState() =>
      _PhoneNumberFormState();
}

class _PhoneNumberFormState
    extends State<PhoneNumberForm> {
  final TextEditingController
  _phoneController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center,
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                text: 'Phone number',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: ' *',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),

        Row(
          children: [
            Container(
              padding:
                  EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius:
                    BorderRadius.circular(
                      4,
                    ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/verifypage_assets/Singapore (SG).png",
                  ),
                  SizedBox(width: 4),
                  Text(
                    '+65',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight
                              .bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                controller:
                    _phoneController,
                keyboardType:
                    TextInputType.phone,
                decoration: InputDecoration(
                  hintText:
                      '9876XXXXXX',
                  hintStyle: TextStyle(
                    fontWeight:
                        FontWeight.bold,
                    color: Colors.grey,
                  ),
                  border:
                      UnderlineInputBorder(),
                  enabledBorder:
                      UnderlineInputBorder(
                        borderSide:
                            BorderSide(
                              color: Colors
                                  .black,
                            ),
                      ),
                  focusedBorder:
                      UnderlineInputBorder(
                        borderSide:
                            BorderSide(
                              color: Colors
                                  .black,
                            ),
                      ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 40),

        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            vertical: 16,
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(
              255,
              123,
              78,
              64,
            ),
            borderRadius:
                BorderRadius.circular(
                  50,
                ),
          ),
          alignment: Alignment.center,
          child: Text(
            'Continue',
            style: TextStyle(
              fontSize: 16,
              fontWeight:
                  FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Row(
            children: [
              Text(
                "You agree tou our ",
              ),
              Text(
                "Terms of Service ",
                style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    123,
                    78,
                    64,
                  ),
                ),
              ),
              Text("& "),
              Text(
                "Privacy Policy.",
                style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    123,
                    78,
                    64,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
