import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

import 'package:flutter/material.dart';

class BNotification extends StatelessWidget {
  const BNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppBars(title: "Notification"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ComponentSlideIns(
                beginOffset: const Offset(0.0, -5.0),
                duration: const Duration(milliseconds: 1000),
                child: const Icon(Icons.notification_add_sharp,
                    size: 70, color: Colors.amber)),
            const SizedBox(
              height: 20,
            ),
            ComponentSlideIns(
              beginOffset: const Offset(-4.0, 0.0),
              duration: const Duration(milliseconds: 1200),
              child: const Text(
                  "OOPS! There is no notification available, check back later!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
