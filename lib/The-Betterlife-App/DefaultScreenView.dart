import 'package:flutter/material.dart';


import 'package:the_betterlife_app/The-Betterlife-App/APP-BAR/Profile.dart';
import 'package:the_betterlife_app/The-Betterlife-App/BOTTOM-BAR/Home.dart';
import 'package:the_betterlife_app/The-Betterlife-App/BOTTOM-BAR/Loans.dart';
import 'package:the_betterlife_app/The-Betterlife-App/BOTTOM-BAR/Payments.dart';
import 'package:the_betterlife_app/The-Betterlife-App/BOTTOM-BAR/Savings.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  int selectedIndex = 0;

  static List<Widget> widgetOptions =[
    const BHome(),
    BSavings(),
    BPayments(),
    const BLoans(),
    BProfile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetOptions.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          selectedItemColor:
              Color(0xFF035598),
          unselectedItemColor: Color(0xFF424242), 
          selectedLabelStyle: const TextStyle(
              fontWeight:
                  FontWeight.bold), 

          items:  [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.savings_outlined),
              label: 'Savings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_rounded),
              label: 'Payments',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_rounded),
              label: 'Loans',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Accounts',
            ),
          ],
        ));
  }
}
