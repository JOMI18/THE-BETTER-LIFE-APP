import 'package:flutter/material.dart';

class Switches extends StatefulWidget {
  const Switches({super.key});

  @override
  State<Switches> createState() => _SwitchesState();
}

class _SwitchesState extends State<Switches> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
        activeColor: const Color.fromARGB(228, 211, 231, 255),
        inactiveThumbColor: Color.fromARGB(255, 3, 85, 152),
        activeTrackColor: Color.fromARGB(255, 3, 85, 152),
        inactiveTrackColor: const Color.fromARGB(228, 211, 231, 255),
        value: isSwitchOn,
        onChanged: (value) {
          setState(() {
            isSwitchOn = value;
          });
        });
  }
}
