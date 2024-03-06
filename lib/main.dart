import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/Imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 3, 53, 255),
          surfaceVariant: Color.fromARGB(255, 187, 221, 250),
          secondary: const Color.fromARGB(228, 211, 231, 255),
        ),
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 71, 203)),
        useMaterial3: true,
      ),
            initialRoute: "indexPage",

      routes: {
        //////////////// The Betterlife APP  //////////////

        //////// ENTRY FORMS
        'indexPage': (context) => BIndexPage(),
        "signUp": (context) => const BSignUp(),
        "logIn": (context) => BSignIn(),
        "alreadySignedIn": (context) => const BAlreadySignedIn(),
        "forgotPin": (context) => const BForgotPin(),

        //////// DEFAULTS
        "default": (context) => const DefaultScreen(),
        "home": (context) => BHome(),

        //////// APPBAR
        "profile": (context) => BProfile(),
        // WITHIN PROFILE
        "profileInfo": (context) => BProfileInfo(),
        "security": (context) => const BSecurity(),
        "signOut": (context) => const SignOutAlert(),

        "support": (context) => BSupport(),
        // WITHIN SUPPORT
        'gettingLoan': (context) => const LoanPageView(),
        'challenge': (context) => const ChallengePage(),

        "notify": (context) => const BNotification(),

        //////// MONEY TAB
        'addMoney': (context) => BAddMoney(),
        'sendMoney': (context) => const BSendMoney(),

        //////// QUICK ACCESS
        'dataAirtime': (context) => AirtimeDataCombo(),
        'payBills': (context) => BillTabs(),
      },
    );
  }
}
