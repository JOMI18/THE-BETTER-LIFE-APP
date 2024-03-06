import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BIndexPage extends StatefulWidget {
  const BIndexPage({super.key});

  @override
  State<BIndexPage> createState() => _BIndexPageState();
}

class _BIndexPageState extends State<BIndexPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late SharedPreferences prefer;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration:
          const Duration(milliseconds: 1000), // Adjust the duration as needed
    )..repeat();

    Future.delayed(const Duration(milliseconds: 3000),
        () => {controller.stop(), setSignUp()});
  }

  void setLogin() async {
    prefer = await SharedPreferences.getInstance();
    bool? isDataLoggedIn = prefer.getBool("loggedIn");
    // print("Value of 'loggedIn' in SharedPreferences: $data");
    if (isDataLoggedIn == true) {
      Navigator.pushNamed(context, "alreadySignedIn");
    } else {
      Navigator.pushNamed(context, "logIn");
    }
  }

  void setSignUp() async {
    prefer = await SharedPreferences.getInstance();
    bool? isDataSignedUp = prefer.getBool("accountHolder");
    // print("Value of 'loggedIn' in SharedPreferences: $data");
    if (isDataSignedUp == true) {
      setLogin();
    } else {
      Navigator.pushNamed(context, "signUp");
    }
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      // backgroundColor: colorScheme.secondary,
      // backgroundColor: Colors.white,
      body: ComponentSlideIns(
        beginOffset: const Offset(0, -4),
        duration: const Duration(milliseconds: 1400),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/Assets/img/app-logo.jpg",
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to the Betterlife App",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 50,
              ),
              RotationTransition(
                turns: controller,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr4lLaicZ8wTR375x6xE2nlkRFdus6ClH33Llwp-d6gemtJO-KpL_y4ySGEnOlGn7U5ZM&usqp=CAU",
                  fit: BoxFit.cover,
                  height: 60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
