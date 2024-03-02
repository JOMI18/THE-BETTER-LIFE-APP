import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/PasswordBox.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        children: [
          ComponentSlideIns(
            beginOffset: Offset(-4, 0),
            duration: Duration(milliseconds: 1200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create PIN",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Set your private 4-digit PIN to secure your account. Never disclose this to anyone!",
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
            beginOffset: Offset(6, 0),
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
            beginOffset: Offset(-4, 0),
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
