import "package:flutter/material.dart";
import "package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/PopUpButtons.dart";
import "package:the_betterlife_app/The-Betterlife-App/POPUPS/CustomAlertDialog.dart";

class SignOutAlert extends StatelessWidget {
  const SignOutAlert({super.key});

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
                    Navigator.of(context).pop();
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
