import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class buildFirstNameField extends StatefulWidget {
  const buildFirstNameField({super.key});

  @override
  State<buildFirstNameField> createState() => _buildFirstNameFieldState();
}

class _buildFirstNameFieldState extends State<buildFirstNameField> {
  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(4, 0),
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "First Name",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'John',
          )
        ],
      ),
    );
  }
}

class buildSurnameField extends StatefulWidget {
  const buildSurnameField({super.key});

  @override
  State<buildSurnameField> createState() => _buildSurnameFieldState();
}

class _buildSurnameFieldState extends State<buildSurnameField> {
  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(-4, 0),
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Surname / Last Name",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'Smith',
          ),
        ],
      ),
    );
  }
}
