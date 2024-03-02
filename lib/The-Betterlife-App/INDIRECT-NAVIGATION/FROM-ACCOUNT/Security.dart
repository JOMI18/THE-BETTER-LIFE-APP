import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/AppBars.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/Switches.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class BSecurity extends StatelessWidget {
  const BSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(226, 240, 245, 251),
      appBar: BAppBars(title: "Security"),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            ComponentSlideIns(
              beginOffset: Offset(-2.0, 0.0),
              endOffset: Offset(0.0, 0.0),
              duration: Duration(milliseconds: 1000),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'forgotPin');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.white),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            "Reset Pin",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 6,
                    color: Color.fromARGB(35, 55, 55, 55),
                  )
                ],
              ),
            ),
            ComponentSlideIns(
              beginOffset: Offset(-2.0, 0.0),
              endOffset: Offset(0.0, 0.0),
              duration: Duration(milliseconds: 1200),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Row(
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
                  Divider(
                    height: 6,
                    color: Color.fromARGB(35, 55, 55, 55),
                  )
                ],
              ),
            ),
            ComponentSlideIns(
              beginOffset: Offset(-2.0, 0.0),
              endOffset: Offset(0.0, 0.0),
              duration: Duration(milliseconds: 1300),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Row(
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
                  Divider(
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
