import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class buildPINField extends StatefulWidget {
  const buildPINField({super.key});

  @override
  State<buildPINField> createState() => _buildPINFieldState();
}

class _buildPINFieldState extends State<buildPINField> {
  bool isPINObscure = true;
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ComponentSlideIns(
      beginOffset: const Offset(-4, 0),
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "PIN",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'xxxx',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPINObscure = !isPINObscure;
                });
              },
              child: Icon(
                isPINObscure ? Icons.visibility_off : Icons.visibility,
                color: isPINObscure ? Colors.grey : colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class buildConfirmPINField extends StatefulWidget {
  const buildConfirmPINField({super.key});

  @override
  State<buildConfirmPINField> createState() => _buildConfirmPINFieldState();
}

class _buildConfirmPINFieldState extends State<buildConfirmPINField> {
  bool isConfirmPINObscure = true;
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return ComponentSlideIns(
      beginOffset: const Offset(4, 0),
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Confirm PIN",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'xxxx',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isConfirmPINObscure = !isConfirmPINObscure;
                });
              },
              child: Icon(
                isConfirmPINObscure ? Icons.visibility_off : Icons.visibility,
                color: isConfirmPINObscure ? Colors.grey : colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
