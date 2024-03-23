import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/Imports.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to Betterlife  ",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "To create an account, Enter your details exactly as they appear on your BVN ",
                textAlign: TextAlign.start,
                softWrap: true,
                maxLines: null,
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 35, 35, 35)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
