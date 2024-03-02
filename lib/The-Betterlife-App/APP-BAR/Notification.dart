import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/AppBars.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class BNotification extends StatelessWidget {
  const BNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppBars(title: "Notification"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ComponentSlideIns(
                beginOffset: Offset(0.0, -5.0),
                endOffset: Offset(0.0, 0.0),
                duration: Duration(milliseconds: 1000),
                child: Icon(Icons.notification_add_sharp,
                    size: 70, color: Colors.amber)),
            SizedBox(
              height: 20,
            ),
            ComponentSlideIns(
              beginOffset: Offset(-2.0, 0.0),
              endOffset: Offset(0.0, 0.0),
              duration: Duration(milliseconds: 1200),
              child: Text(
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
