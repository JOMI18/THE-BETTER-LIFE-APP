import 'package:flutter/material.dart';

import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({super.key});

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
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

  void submit() {
    // print("isReady to submit");
    Navigator.pushNamed(context, "createPin");
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ComponentSlideIns(
                      beginOffset: const Offset(0, -2),
                      duration: const Duration(milliseconds: 1200),
                      child: const Icon(
                        Icons.phone_android_rounded,
                        size: 60,
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  ComponentSlideIns(
                    beginOffset: const Offset(-2, 0),
                    duration: const Duration(milliseconds: 1200),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Verify Phone number",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Enter the 4-digit code sent 234**********93 and jona*********@gmail.com. Never disclose this to anyone!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Column(
                children: [
                  ComponentSlideIns(
                    beginOffset: const Offset(2, 0),
                    duration: const Duration(milliseconds: 1200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PasswordInputBox(
                            textController: controller1,
                            focusnode: focusnode1,
                            nextfocusnode: focusnode2),
                        const SizedBox(
                          width: 12,
                        ),
                        PasswordInputBox(
                            textController: controller2,
                            focusnode: focusnode2,
                            nextfocusnode: focusnode3),
                        const SizedBox(
                          width: 12,
                        ),
                        PasswordInputBox(
                            textController: controller3,
                            focusnode: focusnode3,
                            nextfocusnode: focusnode4),
                        const SizedBox(
                          width: 12,
                        ),
                        PasswordInputBox(
                            textController: controller4,
                            focusnode: focusnode4,
                            nextfocusnode: focusnode5),
                        const SizedBox(
                          width: 12,
                        ),
                        PasswordInputBox(
                            textController: controller5,
                            focusnode: focusnode5,
                            nextfocusnode: focusnode6),
                        const SizedBox(
                          width: 12,
                        ),
                        PasswordInputBox(
                          textController: controller6,
                          focusnode: focusnode6,
                          func: submit,
                          isLast: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ComponentSlideIns(
                    beginOffset: const Offset(6, 0),
                    duration: const Duration(milliseconds: 1200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't receive the code? ",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade900),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Send again',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: colorScheme.primary),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
