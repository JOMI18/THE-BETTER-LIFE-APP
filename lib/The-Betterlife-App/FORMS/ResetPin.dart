import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

import 'package:flutter/material.dart';

class ResetPIN extends StatelessWidget {
  const ResetPIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSlideIns(
                beginOffset: Offset(4, 0),
                duration: Duration(milliseconds: 600),
                child: const Text(
                  "Reset PIN",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              ComponentSlideIns(
                beginOffset: Offset(4, 0),
                duration: Duration(milliseconds: 800),
                child: Text(
                  "To help protect you, please confirm the phone number registered on your Betterlife account and your date of birth",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildNumberField(),
              const SizedBox(
                height: 20,
              ),
              buildDOBField(),
            ],
          )
        ],
      ),
    );
  }
}
