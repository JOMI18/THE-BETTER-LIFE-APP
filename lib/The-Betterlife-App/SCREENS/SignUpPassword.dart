import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/Imports.dart';

class BsignUpPasswordScreen extends StatelessWidget {
  BsignUpPasswordScreen({super.key});

  final List<String> Items = [
    "A lowercase letter (a)",
    "An uppercase letter  (A)",
    "A special character  (@#^%)",
    "A number(1)",
    "8 characters minimum"
  ];

 

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: const BAppBars(
          title: "You're, Almost Done...",
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(children: [
            Expanded(
                child: SingleChildScrollView(
                    child: Column(
              children: [
                const Text(
                  "Please fill in your details to finish creating your account.",
                  textAlign: TextAlign.start,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Form(
                    child: Column(
                  children: [
                    buildEmailField(),
                    SizedBox(
                      height: 20,
                    ),
                    buildNumberField(),
                    SizedBox(
                      height: 20,
                    ),
                    buildPasswordField(),
                    SizedBox(
                      height: 20,
                    ),
                    buildConfirmPasswordField(),
                  ],
                )),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Requirements:",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: Items.map((item) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor: colorScheme.primary,
                                  foregroundColor: Colors.white,
                                  radius: 12,
                                  child: Icon(
                                    Icons.check,
                                    size: 17,
                                  )),
                              SizedBox(width: 10),
                              Text(
                                item,
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                ComponentSlideIns(
                  beginOffset: Offset(0, 2),
                  duration: Duration(milliseconds: 1200),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 5,
                          fixedSize: const Size(350, 60),
                          backgroundColor: colorScheme.primary,
                          foregroundColor: Colors.white,

                          // disabledForegroundColor: Colors.black,
                          // disabledBackgroundColor:
                          //     colorScheme.primary.withOpacity(0.6),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      onPressed: () {
                       
                        Navigator.pushNamed(context, "verifyNumber");
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                        ),
                      )),
                ),
              ],
            )))
          ]),
        ));
  }
}
