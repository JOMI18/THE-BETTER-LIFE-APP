import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/PasswordBox.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        children: [
          ComponentSlideIns(
            beginOffset: Offset(0, -6),
            duration: Duration(milliseconds: 1200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Confirm PIN",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Just to be sure. Kindly re-enter your 4-digit PIN to confirm it.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ComponentSlideIns(
            beginOffset: Offset(-6, 0),
            duration: Duration(milliseconds: 1200),
            child: Icon(
              Icons.lock,
              size: 50,
              color: const Color.fromARGB(255, 3, 85, 152),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ComponentSlideIns(
            beginOffset: Offset(4, 0),
            duration: Duration(milliseconds: 1200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PasswordInputBox(),
                SizedBox(
                  width: 8,
                ),
                PasswordInputBox(),
                SizedBox(
                  width: 8,
                ),
                PasswordInputBox(),
                SizedBox(
                  width: 8,
                ),
                PasswordInputBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
