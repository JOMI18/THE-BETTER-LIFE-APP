import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";
import 'package:flutter/material.dart';

class BIndexPage extends StatefulWidget {
  const BIndexPage({super.key});

  @override
  State<BIndexPage> createState() => _BIndexPageState();
}

class _BIndexPageState extends State<BIndexPage> {
  late SharedPreferences prefer;

  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(milliseconds: 3000), () => {initializePreferences()});
  }

  void initializePreferences() async {
    prefer = await SharedPreferences.getInstance();
    navigateUser();
  }

  void navigateUser() {
    bool? isDataNew = prefer.getBool("newUser");

    // print(isDataNew);

    if (isDataNew == null || isDataNew) {
      Navigator.of(context).push(
        SlideAnimation(
          page: BNewUser(),
        ),
      );
    } else {
      bool? isDataSignedUp = prefer.getBool("accountHolder");
      // print(isDataSignedUp);
      print("Value of 'newUser' in SharedPreferences: $isDataNew");
      // prefer.clear();
      if (isDataSignedUp == true) {
        setLogin();
      } else {
        Navigator.pushNamed(context, "signUp");
        // Navigator.pushNamed(context, "newUser");
      }
    }
  }

  void setLogin() {
    bool? isDataLoggedIn = prefer.getBool("loggedIn");
    if (isDataLoggedIn == true) {
      Navigator.pushNamed(context, "alreadySignedIn");
    } else {
      Navigator.pushNamed(context, "logIn");
    }
  }

  // void newAppUser() async {
  //   prefer = await SharedPreferences.getInstance();

  //   bool? isDataNew = prefer.getBool("newUser");

  //   if (isDataNew == true) {
  //     setSignUp();
  //   } else {
  //     Navigator.of(context).push(
  //       SlideAnimation(page: BNewUser(), duration: Duration(milliseconds: 500)),
  //     );
  //   }
  // }

  // void setSignUp() async {
  //   prefer = await SharedPreferences.getInstance();
  //   bool? isDataSignedUp = prefer.getBool("accountHolder");
  //   // print("Value of 'loggedIn' in SharedPreferences: $data");
  //   if (isDataSignedUp == true) {
  //     setLogin();
  //   } else {
  //     Navigator.pushNamed(context, "signUp");
  //   }
  // }

  // void setLogin() async {
  //   prefer = await SharedPreferences.getInstance();
  //   bool? isDataLoggedIn = prefer.getBool("loggedIn");
  //   if (isDataLoggedIn == true) {
  //     Navigator.pushNamed(context, "alreadySignedIn");
  //   } else {
  //     Navigator.pushNamed(context, "logIn");
  //   }
  // }

  void clearSharedPreferences() async {
    prefer = await SharedPreferences.getInstance();

    prefer.setBool("newUser", false); // Set the "newUser" key to false
    print(prefer.getBool("newUser"));

    prefer.clear();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ComponentSlideIns(
              beginOffset: const Offset(0, -2),
              duration: const Duration(milliseconds: 1400),
              child: Image.asset(
                "lib/Assets/img/betterlife-transparent-faded.png",
                height: 500,
              ),
            ),
            GestureDetector(
                onTap: clearSharedPreferences,
                child: Text("Clear new user status")),
          ],
        ),
      ),
    );
  }
}
