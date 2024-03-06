import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;
  late TextEditingController controller5;
  late TextEditingController controller6;

  late FocusNode focusnode1;
  late FocusNode focusnode2;
  late FocusNode focusnode3;
  late FocusNode focusnode4;
  late FocusNode focusnode5;
  late FocusNode focusnode6;

  @override
  void initState() {
    super.initState();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    controller4 = TextEditingController();
    controller5 = TextEditingController();
    controller6 = TextEditingController();
    focusnode1 = FocusNode();
    focusnode2 = FocusNode();
    focusnode3 = FocusNode();
    focusnode4 = FocusNode();
    focusnode5 = FocusNode();
    focusnode6 = FocusNode();

    focusnode1.requestFocus();
  }

  void dispose() {
    super.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    focusnode1.dispose();
    focusnode2.dispose();
    focusnode3.dispose();
    focusnode4.dispose();
    focusnode5.dispose();
    focusnode6.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
      child: Column(
        children: [
          ComponentSlideIns(
            beginOffset: const Offset(0, -4),
            duration: const Duration(milliseconds: 1000),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Verifiy",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Enter the 6 digit code we just sent to +234*******034 and jonat****ith@gmail.com",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ComponentSlideIns(
            beginOffset: const Offset(-4, 0),
            duration: const Duration(milliseconds: 1000),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PasswordInputBox(
                    textController: controller1, focusnode: focusnode1),
                const SizedBox(
                  width: 10,
                ),
                PasswordInputBox(
                    textController: controller2, focusnode: focusnode2),
                const SizedBox(
                  width: 10,
                ),
                PasswordInputBox(
                    textController: controller3, focusnode: focusnode3),
                const SizedBox(
                  width: 10,
                ),
                PasswordInputBox(
                    textController: controller4, focusnode: focusnode4),
                const SizedBox(
                  width: 10,
                ),
                PasswordInputBox(
                    textController: controller5, focusnode: focusnode5),
                const SizedBox(
                  width: 10,
                ),
                PasswordInputBox(
                    textController: controller6, focusnode: focusnode6)
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Didn't receive code?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
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
                  child: Icon(Icons.email,
                      size: 20, color: Theme.of(context).iconTheme.color),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  child: Icon(Icons.call,
                      size: 20, color: Theme.of(context).iconTheme.color),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ComponentSlideIns(
              beginOffset: const Offset(0, 12),
              // duration: Duration(milliseconds: 800),
              child: const Text("00:25")),
        ],
      ),
    );
  }
}
