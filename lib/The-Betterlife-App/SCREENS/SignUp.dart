import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class BSignUp extends StatefulWidget {
  const BSignUp({super.key});

  @override
  State<BSignUp> createState() => _BSignUpState();
}

class _BSignUpState extends State<BSignUp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BAppBars(title: "Welcome to Betterlife"),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(18, 12, 18, 8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TopSection(),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                        child: Column(
                      children: [
                        buildFirstNameField(),
                        SizedBox(
                          height: 12,
                        ),
                        buildSurnameField(),
                        SizedBox(
                          height: 12,
                        ),
                        buildEmailField(),
                        SizedBox(
                          height: 12,
                        ),
                        buildNumberField(),
                        SizedBox(
                          height: 12,
                        ),
                        buildDOBField(),
                        SizedBox(
                          height: 12,
                        ),
                        buildGenderField(),
                        SizedBox(
                          height: 12,
                        ),
                        buildNationalityField(),
                        SizedBox(
                          height: 12,
                        ),
                        buildPINField(),
                        SizedBox(
                          height: 12,
                        ),
                        buildConfirmPINField()
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    BottomSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
