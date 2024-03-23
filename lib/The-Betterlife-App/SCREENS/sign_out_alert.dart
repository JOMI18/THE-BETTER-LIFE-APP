import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';

class SignOutAlert extends StatelessWidget {
  const SignOutAlert({super.key});
  void clearSharedPreferences() async {
    SharedPreferences prefer = await SharedPreferences.getInstance();
    bool? isDataSignedUp = prefer.getBool("accountHolder");
    bool? isDataLoggedIn = prefer.getBool("loggedIn");
    bool? isDataNew = prefer.getBool("newUser");
// Navigate to the new user page
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => BNewUser()),
    // );// navigate out of app
    if (isDataSignedUp == true &&
        isDataLoggedIn == true &&
        isDataNew == false) {
      await prefer.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 85, 152).withOpacity(0.2),
      body: CustomAlertDialog(
          icon: (Icons.sign_language_outlined),
          iconColor: const Color.fromARGB(255, 255, 17, 0),
          title: "Sign Out",
          content: const Text(
            "You are about to sign out of your account. Are you sure?",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    clearSharedPreferences();
                    Navigator.of(context).popUntil(
                        (route) => route.settings.name == 'indexPage');
                  },
                  style: popUpButtonStyle(),
                  child: const Text("Yes",
                      style: TextStyle(fontWeight: FontWeight.w900)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: popUpButtonStyle(),
                  child: const Text("No",
                      style: TextStyle(fontWeight: FontWeight.w900)),
                ),
              ],
            ),
          ]),
    );
  }
}
