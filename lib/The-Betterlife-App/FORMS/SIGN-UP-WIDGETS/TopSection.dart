import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create your Betterlife account ",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
            Text(
              "Enter your details exactly as they appear on your BVN ",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
            ),
          ],
        ),
      ],
    );
  }
}
