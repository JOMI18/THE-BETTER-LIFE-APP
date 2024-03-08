import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";
import 'package:flutter/material.dart';

class BSignIn extends StatefulWidget {
  BSignIn({super.key});

  @override
  State<BSignIn> createState() => _BSignInState();
}

class _BSignInState extends State<BSignIn> {
  bool isPasswordObscure = true;
  void setLogin() async {
    final SharedPreferences prefer = await SharedPreferences.getInstance();
    prefer.setBool("loggedIn", true);
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: const WelcomeAppBar(),
      bottomNavigationBar: ComponentSlideIns(
        beginOffset: const Offset(4, 0),
        duration: const Duration(milliseconds: 1200),
        child: BottomAppBar(
            surfaceTintColor: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  " Don't have a Betterlife account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      SlideAnimation(
                        page: const BSignUp(),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.primary),
                  ),
                ),
              ],
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
        child: Column(
          children: [
            ComponentSlideIns(
              beginOffset: const Offset(4, 0),
              duration: const Duration(milliseconds: 1200),
              child: Row(
                children: [
                  Expanded(
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
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Complete your details below to continue your Betterlife account",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade800,
                          ),
                        ),
                        //remove later
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                            onTap: () {
                              setLogin();
                              Navigator.pushNamed(context, "alreadySignedIn");
                            },
                            child: Text(
                              "Click to Submit",
                              style: TextStyle(color: colorScheme.primary),
                            )),

                        //remove later
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const buildNumberField(),
            const SizedBox(
              height: 20,
            ),
            const buildPasswordField()
          ],
        ),
      ),
    );
  }
}
