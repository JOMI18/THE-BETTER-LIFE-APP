import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class BNewUser extends StatefulWidget {
  const BNewUser({super.key});

  @override
  State<BNewUser> createState() => _BNewUserState();
}

class _BNewUserState extends State<BNewUser> {
  void newAppUser() async {
    final SharedPreferences prefer = await SharedPreferences.getInstance();
    prefer.setBool("newUser", false);

    Navigator.pushNamed(context, "signUp");
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ComponentSlideIns(
                  beginOffset: Offset(0, -2),
                  duration: Duration(milliseconds: 1200),
                  child: Image.asset(
                    "lib/Assets/img/app-name-logo.PNG",
                  ),
                ),
                Column(
                  children: [
                    ComponentSlideIns(
                      beginOffset: Offset(2, 0),
                      duration: Duration(milliseconds: 1200),
                      child: Lottie.asset(
                        "lib/Assets/img/lottie/new-to-app-animation.json",
                        height: 280,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ComponentSlideIns(
                        beginOffset: Offset(-2, 0),
                        duration: Duration(milliseconds: 1000),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 550,
                              child: Text(
                                "Instantly buy Data-bundle and Airtime, Pay Electricity and Cable/TV bills, Convert Airtime to Cash, Transfer to Nigerian Bank Accounts and Save money.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                                softWrap:
                                    true, // Allow the text to wrap onto multiple lines
                                maxLines: null, // Unlimited number of lines
                              ),
                            )))
                  ],
                ),
                ComponentSlideIns(
                  beginOffset: Offset(0, 2),
                  duration: Duration(milliseconds: 1000),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        fixedSize: Size(350, 60),
                        backgroundColor: colorScheme.primary,
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    onPressed: newAppUser,
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
