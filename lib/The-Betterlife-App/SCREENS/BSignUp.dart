import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_betterlife_app/The-Betterlife-App/Imports.dart';

class ActiveSignUp extends StatefulWidget {
  const ActiveSignUp({super.key});

  @override
  State<ActiveSignUp> createState() => _ActiveSignUpState();
}

class _ActiveSignUpState extends State<ActiveSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppBars(
        title: "Hello, Create An Account",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        child: const Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TopSection(),
                    SizedBox(
                      height: 15,
                    ),
                    Form(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildFirstNameField(),
                        SizedBox(
                          height: 20,
                        ),
                        buildSurnameField(),
                        SizedBox(
                          height: 20,
                        ),
                        buildDOBField(),
                        SizedBox(
                          height: 20,
                        ),
                        buildGenderField(),
                        SizedBox(
                          height: 20,
                        ),
                        buildNationalityField(),
                      ],
                    )),
                    SizedBox(
                      height: 50,
                    ),
                    BottomSection()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
