import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";
import 'package:flutter/material.dart';

class BSavings extends StatefulWidget {
  BSavings({super.key});

  @override
  State<BSavings> createState() => _BSavingsState();
}

class _BSavingsState extends State<BSavings> {
  int selectedIndex = 0;

  final List<String> tabTitles = ["Active", "Pending", "Completed"];

  @override
  Widget build(BuildContext context) {
  ColorScheme colorscheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: TabBarsViews(
          dynamicTitle: "My Savings --",
          title: tabTitles[selectedIndex],
          tabTitles: tabTitles,
          tabViews: [Active(colorScheme: colorscheme), Pending(colorScheme: colorscheme), Completed(colorScheme: colorscheme)],
          onTabChanged: (index) {
            // Update the selected index when the tab changes
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
