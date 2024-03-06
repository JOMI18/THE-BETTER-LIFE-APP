import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";
import 'package:flutter/material.dart';

class BSecurity extends StatelessWidget {
  const BSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(226, 240, 245, 251),
      appBar: const BAppBars(title: "Security"),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            ComponentSlideIns(
              beginOffset: const Offset(-4.0, 0.0),
              duration: const Duration(milliseconds: 1000),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'forgotPin');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.white),
                      padding: const EdgeInsets.all(20),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reset Pin",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 6,
                    color: Color.fromARGB(35, 55, 55, 55),
                  )
                ],
              ),
            ),
            ComponentSlideIns(
              beginOffset: const Offset(-4.0, 0.0),
              duration: const Duration(milliseconds: 1200),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Activate FaceID for Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Switches()
                      ],
                    ),
                  ),
                  const Divider(
                    height: 6,
                    color: Color.fromARGB(35, 55, 55, 55),
                  )
                ],
              ),
            ),
            ComponentSlideIns(
              beginOffset: const Offset(-4.0, 0.0),
              duration: const Duration(milliseconds: 1300),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Authorize transactions with FaceID",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Switches()
                      ],
                    ),
                  ),
                  const Divider(
                    height: 6,
                    color: Color.fromARGB(35, 55, 55, 55),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
