import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/TextField.dart';
import 'package:the_betterlife_app/The-Betterlife-App/FORMS/SignUp.dart';
import 'package:the_betterlife_app/The-Betterlife-App/POPUPS/BottomPopUps.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/SlideAnimation.dart';

class BSignIn extends StatefulWidget {
  BSignIn({super.key});

  @override
  State<BSignIn> createState() => _BSignInState();
}

class _BSignInState extends State<BSignIn> {
  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ComponentSlideIns(
        beginOffset: Offset(0, 2),
        duration: Duration(milliseconds: 1200),
        child: BottomAppBar(
            surfaceTintColor: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Don't have a Betterlife account?",
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
                        page: BSignUp(),
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 3, 85, 152),
                    ),
                  ),
                ),
              ],
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 14),
        child: Column(
          children: [
            ComponentSlideIns(
              beginOffset: Offset(0, -2),
              duration: Duration(milliseconds: 1200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.home_work_rounded,
                        size: 40,
                        color: Color.fromARGB(255, 3, 85, 152),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Betterlife",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 85, 152),
                        ),
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
            ),
            const SizedBox(
              height: 25,
            ),
            ComponentSlideIns(
              beginOffset: Offset(2, 0),
              duration: Duration(milliseconds: 1200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome to Betterlife",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Complete your details below to continue your Betterlife account",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Country Code",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 120,
                            child: CustomTextField(
                              hintText: 'Select',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  showDropdownMenu(
                                      context,
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: const Row(children: [
                                                Text(
                                                  '(+234)',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  "Nigeria",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                            ),
                                            Divider(
                                              height: 20,
                                              color: Colors.grey.shade500,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: const Row(children: [
                                                Text(
                                                  '(+1)',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  "United States of America",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                            ),
                                            Divider(
                                              height: 20,
                                              color: Colors.grey.shade500,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: const Row(children: [
                                                Text(
                                                  '(+44)',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  "United Kingdom",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                            ),
                                            Divider(
                                              height: 20,
                                              color: Colors.grey.shade500,
                                            ),
                                          ],
                                        ),
                                      ),
                                      200);
                                },
                                child: const Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Phone Number",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 900,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical:
                                          10, // Adjust vertical padding as needed
                                      horizontal:
                                          10, // Adjust horizontal padding as needed
                                    ),
                                    filled: true,
                                    alignLabelWithHint: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    fillColor: Colors.grey.shade200,
                                    hintText: "xxxx-xxxx-xxx",
                                    hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 133, 133, 133),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Pin",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            child: CustomTextField(
                              hintText: 'xxxx',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isPasswordObscure = !isPasswordObscure;
                                  });
                                },
                                child: Icon(
                                  isPasswordObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: isPasswordObscure
                                      ? Colors.grey
                                      : const Color.fromARGB(255, 3, 85, 152),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
