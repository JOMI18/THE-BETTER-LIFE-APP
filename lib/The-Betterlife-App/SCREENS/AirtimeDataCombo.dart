import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class AirtimeDataCombo extends StatefulWidget {
  AirtimeDataCombo({super.key});

  @override
  State<AirtimeDataCombo> createState() => _AirtimeDataComboState();
}

class _AirtimeDataComboState extends State<AirtimeDataCombo> {
  int selectedIndex = 0;
  final List<String> tabTitles = ["Buy Airtime", "Buy Data"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TabBarsViews(
          title: tabTitles[selectedIndex],
          tabTitles: tabTitles,
          tabViews: [
            const Airtime(),
            const Data(),
          ],
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
