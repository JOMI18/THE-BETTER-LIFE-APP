import 'package:flutter/material.dart';

import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  int selectedIndex = 0;

  static List<Widget> widgetOptions = <Widget>[
    // The main difference is the use of the static keyword. When you declare a variable as static, it belongs to the class itself rather than to instances of the class. This means that all instances of the class share the same copy of the variable.
    BHome(),
    BSavings(),
    BPayments(),
    BTransactions(),
    BProfile(),
  ];
  


  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
        body: widgetOptions.elementAt(selectedIndex),
        // In Dart, the elementAt() method is used to access an element at a specific index in a list or iterable.
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          selectedItemColor: colorScheme
              .primary, // Color of the selected item's icon and label
          unselectedItemColor: Colors
              .grey.shade800, // Color of the unselected items' icons and labels
          selectedLabelStyle: const TextStyle(
              fontWeight:
                  FontWeight.bold), // Style for the selected item's label

          items: const [
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
              label: 'Transactions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Accounts',
            ),
          ],
        ));
  }
}
