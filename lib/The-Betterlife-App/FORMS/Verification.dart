import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/PasswordBox.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        children: [
          ComponentSlideIns(
            beginOffset: Offset(0, -4),
            duration: Duration(milliseconds: 1000),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verification",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 360,
                  child: Text(
                    "Enter the 6 digit code we just sent to +234*******034 and jonat****ith@gmail.com",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ComponentSlideIns(
            beginOffset: Offset(-4, 0),
            duration: Duration(milliseconds: 1000),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PasswordInputBox(),
                const SizedBox(
                  width: 10,
                ),
                PasswordInputBox(),
                const SizedBox(
                  width: 10,
                ),
                PasswordInputBox(),
                const SizedBox(
                  width: 10,
                ),
                PasswordInputBox(),
                const SizedBox(
                  width: 10,
                ),
                PasswordInputBox(),
                const SizedBox(
                  width: 10,
                ),
                PasswordInputBox()
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Didn't receive code?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Resend via SMS or Phone Call",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  child: Icon(
                    Icons.email,
                    size: 20,
                    color: const Color.fromARGB(255, 3, 85, 152),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  child: Icon(
                    Icons.call,
                    size: 20,
                    color: const Color.fromARGB(255, 3, 85, 152),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ComponentSlideIns(
              beginOffset: Offset(0, 12),
              child: Text("00:25")),
        ],
      ),
    );
  }
}
