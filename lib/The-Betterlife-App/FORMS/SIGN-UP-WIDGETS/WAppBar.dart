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
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: ComponentSlideIns(
        beginOffset: const Offset(0, -4),
        duration: const Duration(milliseconds: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.home_work_rounded,
                    size: 40, color: colorScheme.primary),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Betterlife",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary),
                )
              ],
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
