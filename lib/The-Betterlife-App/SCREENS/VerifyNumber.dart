import 'dart:async';

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

  late FocusNode focusnode1;
  late FocusNode focusnode2;
  late FocusNode focusnode3;
  late FocusNode focusnode4;

  var goTo;
  Utilities utilities = Utilities();

  bool isButtonEnabled = true;
  int remainingSeconds = 0;
  AlertInfo alertInfo = AlertInfo();
  AlertLoading alertLoading = AlertLoading();
  var user;
  var email;

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

  void submit() async {
    final otp = controller1.text +
        controller2.text +
        controller3.text +
        controller4.text;
    alertLoading.showAlertDialog(context);
    final response =
        await AuthController().checkOtp({"otp": otp, "email": email});
    alertLoading.closeDialog(context);

    if (response['status'] == 'error') {
      alertInfo.message = response['message'];
      alertInfo.showAlertDialog(context);
      return;
    }

    Navigator.pushNamedAndRemoveUntil(context, goTo, (route) => false);
  }

  // void submit() {
  //   // print("isReady to submit");
  //   Navigator.pushNamed(context, "createPin");
  // }

  void sendAgain() async {
    setState(() {
      isButtonEnabled = false;
      remainingSeconds = 50;
    });

    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        remainingSeconds--;
      });

      if (remainingSeconds == 0) {
        timer.cancel();
        setState(() {
          isButtonEnabled = true;
        });
      }
    });

    alertLoading.showAlertDialog(context);
    final response = await AuthController().sendOtp({"email": email});
    alertLoading.closeDialog(context);

    // if (response['status']=='error') {
    alertInfo.message = response['message'];
    alertInfo.showAlertDialog(context);
    //   return;
    // }
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
          child: Consumer(builder: (context, ref, _) {
            goTo = ref.watch(goToProvider);
            user = ref.watch(userProvider);
            email = ref.watch(signUpProvider)['email'];
            return Column(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Verify Phone number",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Enter the 4-digit code sent to ${utilities.hidePhoneNumber(user.phone)} and ${utilities.hideEmailAddress(user.email)}. Never disclose this to anyone!",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
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
                            nextfocusnode: focusnode4,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          PasswordInputBox(
                            textController: controller4,
                            focusnode: focusnode4,
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
                            onTap: () {
                              sendAgain();
                            },
                            child: Text(
                              isButtonEnabled
                                  ? 'Send again'
                                  : 'Send again in $remainingSeconds seconds',
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
            );
          }),
        ),
      ),
    );
  }
}
