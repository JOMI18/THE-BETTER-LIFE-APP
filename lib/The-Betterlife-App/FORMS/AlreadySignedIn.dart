import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/PasswordBox.dart';
import 'package:the_betterlife_app/The-Betterlife-App/POPUPS/BottomPopUps.dart';
import 'package:the_betterlife_app/The-Betterlife-App/POPUPS/SignOutAlert.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/SlideAnimation.dart';

class BAlreadySignedIn extends StatelessWidget {
  const BAlreadySignedIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.home_work_rounded,
                        size: 40, color: Color.fromARGB(255, 3, 85, 152)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Betterlife",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 85, 152)),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    showHelpPopup(context);
                  },
                  child: const CircleAvatar(
                    radius: 13,
                    backgroundColor: Color.fromARGB(255, 31, 31, 31),
                    child: Icon(
                      Icons.question_mark_outlined,
                      size: 18,
                      color: Color.fromARGB(245, 255, 255, 255),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 280,
                          child: ComponentSlideIns(
                            beginOffset: Offset(0, -4),
                            duration: Duration(milliseconds: 1200),
                            child: Column(
                              children: [
                                Text(
                                  "Welcome back, Jonathan Smith!",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Enter your pin to continue to your Betterlife account",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF424242),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Card(
                      surfaceTintColor: Colors.transparent,
                      elevation: 5,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 32,
                          child: Icon(Icons.account_circle,
                              size: 60,
                              color: Color.fromARGB(255, 3, 85, 152))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    ComponentSlideIns(
                      beginOffset: Offset(2, 0),
                      duration: Duration(milliseconds: 1200),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "forgotPin");
                      },
                      child: const Text(
                        "Forgot PIN?",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 3, 85, 152)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ComponentSlideIns(
                      beginOffset: Offset(0, 4),
                      duration: Duration(milliseconds: 1200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Not Jonathan?",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                SlideAnimation(
                                  page: SignOutAlert(),
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                ),
                              );
                            },
                            child: const Text(
                              'Sign Out',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 3, 85, 152)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
