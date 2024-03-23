import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class WelcomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const WelcomeAppBar({super.key});

  @override
  State<WelcomeAppBar> createState() => _WelcomeAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _WelcomeAppBarState extends State<WelcomeAppBar> {
  @override
  Widget build(BuildContext context) {
    // ColorScheme colorScheme = Theme.of(context).colorScheme;

    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: ComponentSlideIns(
        beginOffset: const Offset(0, -2),
        duration: const Duration(milliseconds: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "lib/Assets/img/app-name-logo-short.PNG",
              height: 70,
            ),
            GestureDetector(
              onTap: () {
                showHelpPopup(context);
              },
              child: const CircleAvatar(
                radius: 13,
                backgroundColor: Color.fromARGB(255, 31, 31, 31),
                child: Icon(
                  Icons.question_mark_outlined,
                  size: 18,
                  color: Color.fromARGB(245, 255, 255, 255),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
