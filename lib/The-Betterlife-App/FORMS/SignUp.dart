import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/TextField.dart';
import 'package:the_betterlife_app/The-Betterlife-App/POPUPS/BottomPopUps.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class BSignUp extends StatefulWidget {
  const BSignUp({super.key});

  @override
  State<BSignUp> createState() => _BSignUpState();
}

class _BSignUpState extends State<BSignUp> {
  bool isPasswordObscure = true;
  bool isConfirmPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.all(5),
        height: 100,
        child: Column(
          children: [
            Text(
              "By continuing, you accept our Terms of Service and Privacy Policy",
              style: TextStyle(fontSize: 12, color: Colors.grey.shade900),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fixedSize: const Size(500, 60),
                  elevation: 5,
                  foregroundColor: Colors.white,
                  disabledForegroundColor: Colors.black,
                  disabledBackgroundColor:
                      const Color.fromARGB(164, 3, 85, 152),
                  backgroundColor: const Color.fromARGB(255, 3, 85, 152),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 18),
                )),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(-18),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Color.fromARGB(146, 167, 167, 167)))),
            )),
        leading: TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 25,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Welcome to Betterlife",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 15),
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create your Betterlife account ",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                  ),
                  Text(
                    "Enter your details exactly as they appear on your BVN ",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 8,
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
                  child: Form(
                      child: Column(
                    children: [
                      ComponentSlideIns(
                        beginOffset: const Offset(2, 0),
                        duration: const Duration(milliseconds: 1200),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "First Name",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              hintText: 'John',
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ComponentSlideIns(
                        beginOffset: const Offset(-2, 0),
                        duration: const Duration(milliseconds: 1200),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Surname / Last Name",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              hintText: 'Smith',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ComponentSlideIns(
                        beginOffset: const Offset(2, 0),
                        duration: const Duration(milliseconds: 1200),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              hintText: 'johnsmith@gmail.com',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ComponentSlideIns(
                        beginOffset: const Offset(-2, 0),
                        duration: const Duration(milliseconds: 1200),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Gender",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              hintText: 'Gender',
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
                                                  "Male",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: const Row(children: [
                                                Text(
                                                  "Female",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                      120);
                                },
                                child: const Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ComponentSlideIns(
                        beginOffset: const Offset(2, 0),
                        duration: const Duration(milliseconds: 1200),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Nationality",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
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
                                                  "Nigeria",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: const Row(children: [
                                                Text(
                                                  "United States of America",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: const Row(children: [
                                                Text(
                                                  "United Kingdom",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                      150);
                                },
                                child: const Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ComponentSlideIns(
                        beginOffset: const Offset(-2, 0),
                        duration: const Duration(milliseconds: 1200),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Date of Birth",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              hintText: 'mm/dd/yyyy',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  showCalendarPicker(context);
                                },
                                child: const Icon(
                                  Icons.calendar_today,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ComponentSlideIns(
                        beginOffset: const Offset(-2, 0),
                        duration: const Duration(milliseconds: 1200),
                        child: Row(
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
                                              padding:
                                                  const EdgeInsets.all(18.0),
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
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "Nigeria",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
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
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "United States of America",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
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
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "United Kingdom",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
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
                            const Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Phone Number",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    width: 900,
                                    child: CustomTextField(
                                      hintText: 'xxxx-xxxx-xxx',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ComponentSlideIns(
                        beginOffset: const Offset(-2, 0),
                        duration: const Duration(milliseconds: 1200),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Password",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              hintText: 'Password',
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
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ComponentSlideIns(
                        beginOffset: const Offset(2, 0),
                        duration: const Duration(milliseconds: 1200),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Confirm Password",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              hintText: 'Confirm Password',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isConfirmPasswordObscure =
                                        !isConfirmPasswordObscure;
                                  });
                                },
                                child: Icon(
                                  isConfirmPasswordObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: isConfirmPasswordObscure
                                      ? Colors.grey
                                      : const Color.fromARGB(255, 3, 85, 152),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
