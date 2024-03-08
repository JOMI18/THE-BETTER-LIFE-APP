import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class buildPasswordField extends StatefulWidget {
  const buildPasswordField({super.key});

  @override
  State<buildPasswordField> createState() => _buildPasswordFieldState();
}

class _buildPasswordFieldState extends State<buildPasswordField> {
  bool isPasswordObscure = true;
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ComponentSlideIns(
      beginOffset: const Offset(-2, 0),
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Password",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'xxxxxxxx',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscure = !isPasswordObscure;
                });
              },
              child: Icon(
                isPasswordObscure ? Icons.visibility_off : Icons.visibility,
                color: isPasswordObscure ? Colors.grey : colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class buildConfirmPasswordField extends StatefulWidget {
  const buildConfirmPasswordField({super.key});

  @override
  State<buildConfirmPasswordField> createState() =>
      _buildConfirmPasswordFieldState();
}

class _buildConfirmPasswordFieldState extends State<buildConfirmPasswordField> {
  bool isConfirmPasswordObscure = true;
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return ComponentSlideIns(
      beginOffset: const Offset(2, 0),
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Confirm Password",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'xxxxxxxx',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isConfirmPasswordObscure = !isConfirmPasswordObscure;
                });
              },
              child: Icon(
                isConfirmPasswordObscure
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: isConfirmPasswordObscure
                    ? Colors.grey
                    : colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
