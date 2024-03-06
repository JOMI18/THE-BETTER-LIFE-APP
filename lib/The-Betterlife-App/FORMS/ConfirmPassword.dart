import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

import 'package:flutter/material.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;

  late FocusNode focusnode1;
  late FocusNode focusnode2;
  late FocusNode focusnode3;
  late FocusNode focusnode4;

  @override
  void initState() {
    super.initState();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    controller4 = TextEditingController();
    focusnode1 = FocusNode();
    focusnode2 = FocusNode();
    focusnode3 = FocusNode();
    focusnode4 = FocusNode();

    focusnode1.requestFocus();
  }

  void dispose() {
    super.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    focusnode1.dispose();
    focusnode2.dispose();
    focusnode3.dispose();
    focusnode4.dispose();
  }

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Confirm the PIN",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Just to be sure. Kindly re-enter your 4-digit PIN to confirm it.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ComponentSlideIns(
            beginOffset: Offset(-6, 0),
            duration: Duration(milliseconds: 1200),
            child: Icon(Icons.lock,
                size: 50, color: Theme.of(context).iconTheme.color),
          ),
          SizedBox(
            height: 40,
          ),
          ComponentSlideIns(
            beginOffset: Offset(4, 0),
            duration: Duration(milliseconds: 1200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PasswordInputBox(
                    textController: controller1, focusnode: focusnode1),
                SizedBox(
                  width: 8,
                ),
                PasswordInputBox(
                    textController: controller2, focusnode: focusnode2),
                SizedBox(
                  width: 8,
                ),
                PasswordInputBox(
                    textController: controller3, focusnode: focusnode3),
                SizedBox(
                  width: 8,
                ),
                PasswordInputBox(
                    textController: controller4, focusnode: focusnode4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
