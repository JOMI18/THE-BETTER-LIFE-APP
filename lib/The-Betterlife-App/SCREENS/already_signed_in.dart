import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class BAlreadySignedIn extends StatefulWidget {
  const BAlreadySignedIn({super.key});

  @override
  State<BAlreadySignedIn> createState() => _BAlreadySignedInState();
}

class _BAlreadySignedInState extends State<BAlreadySignedIn> {
  // TextEditingController controller1 =
  //     TextEditingController(); // never do this it makes your screen lag, and always make sure to dispose controllers

  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;

  late FocusNode focusnode1;
  late FocusNode focusnode2;
  late FocusNode focusnode3;
  late FocusNode focusnode4;

  final dio = Dio();

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
    Navigator.pushNamed(context, "dashboard");
    // final response = await dio.get('https://dart.dev'); // in flutter, we dont use localhost as the base url

    // final response = await dio.get('http://10.0.2.2:8000/api/hello');
    // final response = await dio.get('http://10.0.2.2:8000/api/user'); wont work its protected by sanctum

    // final person = await dio.post('http://10.0.2.2:8000/api/register', data: {
    //   "name": "Jomi",
    //   "email": "getJomi@mail.com",
    //   "password": "1234568967"
    // });
    // // print(response);
    // print(person);
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: const WelcomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ComponentSlideIns(
                        beginOffset: const Offset(0, -4),
                        duration: const Duration(milliseconds: 1200),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome back, Jonathan Smith!",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
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
                    ],
                  ),
                ),
                Card(
                  surfaceTintColor: Colors.transparent,
                  elevation: 5,
                  child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 32,
                      child: Icon(Icons.account_circle,
                          size: 60, color: Theme.of(context).iconTheme.color)),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                ComponentSlideIns(
                  beginOffset: const Offset(4, 0),
                  duration: const Duration(milliseconds: 1200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      PasswordInputBox(
                        textController: controller1,
                        focusnode: focusnode1,
                        nextfocusnode: focusnode2,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      PasswordInputBox(
                        textController: controller2,
                        focusnode: focusnode2,
                        nextfocusnode: focusnode3,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      PasswordInputBox(
                        textController: controller3,
                        focusnode: focusnode3,
                        nextfocusnode: focusnode4,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      PasswordInputBox(
                        textController: controller4,
                        focusnode: focusnode4,
                        isLast: true,
                        func: submit,
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
                  child: Text(
                    "Forgot PIN?",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.primary),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.fingerprint_rounded,
                    size: 60,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ComponentSlideIns(
                  beginOffset: const Offset(0, 4),
                  duration: const Duration(milliseconds: 1200),
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
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            SlideAnimation(
                              page: const SignOutAlert(),
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            ),
                          );
                        },
                        child: Text(
                          'Sign Out',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: colorScheme.primary),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
