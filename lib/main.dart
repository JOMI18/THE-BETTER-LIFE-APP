import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/APP-BAR/Notification.dart';
import 'package:the_betterlife_app/The-Betterlife-App/APP-BAR/Profile.dart';
import 'package:the_betterlife_app/The-Betterlife-App/APP-BAR/Support.dart';
import 'package:the_betterlife_app/The-Betterlife-App/BOTTOM-BAR/Home.dart';
import 'package:the_betterlife_app/The-Betterlife-App/DefaultScreenView.dart';
import 'package:the_betterlife_app/The-Betterlife-App/FORMS/AlreadySignedIn.dart';
import 'package:the_betterlife_app/The-Betterlife-App/FORMS/ForgotPin.dart';
import 'package:the_betterlife_app/The-Betterlife-App/FORMS/SignIn.dart';
import 'package:the_betterlife_app/The-Betterlife-App/FORMS/SignUp.dart';
import 'package:the_betterlife_app/The-Betterlife-App/INDIRECT-NAVIGATION/FROM-ACCOUNT/ProfileDetails.dart';
import 'package:the_betterlife_app/The-Betterlife-App/INDIRECT-NAVIGATION/FROM-ACCOUNT/Security.dart';
import 'package:the_betterlife_app/The-Betterlife-App/INDIRECT-NAVIGATION/FROM-SUPPORT/Challenge.dart';
import 'package:the_betterlife_app/The-Betterlife-App/INDIRECT-NAVIGATION/FROM-SUPPORT/LoanPageView.dart';
import 'package:the_betterlife_app/The-Betterlife-App/MONEY-TRANSACTIONS/AddMoney.dart';
import 'package:the_betterlife_app/The-Betterlife-App/MONEY-TRANSACTIONS/SendMoney.dart';
import 'package:the_betterlife_app/The-Betterlife-App/POPUPS/SignOutAlert.dart';
import 'package:the_betterlife_app/The-Betterlife-App/QUICK-ACCESS/AirtimeDataCombo.dart';
import 'package:the_betterlife_app/The-Betterlife-App/QUICK-ACCESS/BillTabs.dart';

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
          seedColor: const Color.fromARGB(255, 3, 85, 152),
          surfaceTint: Colors.white,
        ),
        useMaterial3: true,
      ),
      initialRoute: "alreadySignedIn",
      routes: {
        //////// ENTRY FORMS
        "signUp": (context) => const BSignUp(),
        "logIn": (context) => BSignIn(),
        "alreadySignedIn": (context) => const BAlreadySignedIn(),
        "forgotPin": (context) => const BForgotPin(),

        //////// DEFAULTS
        "default": (context) => const DefaultScreen(),
        "home": (context) => const BHome(),

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
        'addMoney': (context) => const BAddMoney(),
        'sendMoney': (context) => const BSendMoney(),

        //////// QUICK ACCESS
        'dataAirtime': (context) => AirtimeDataCombo(),
        'payBills': (context) => BillTabs(),
      },
    );
  }
}
