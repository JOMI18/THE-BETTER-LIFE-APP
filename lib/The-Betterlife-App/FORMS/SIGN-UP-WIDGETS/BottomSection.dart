import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});
  void setSignUp() async {
    final SharedPreferences prefer = await SharedPreferences.getInstance();
    prefer.setBool("accountHolder", true);
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "By continuing, you accept our ",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade900),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Terms of Service',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.primary),
              ),
            ),
            Text(
              " and ",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade900),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Privacy Policy.',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.primary),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
            // onPressed: null,
            onPressed: () {
              setSignUp();
              Navigator.pushNamed(context, "logIn");
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                fixedSize: const Size(450, 60),
                elevation: 5,
                foregroundColor: Colors.white,
                // disabledForegroundColor: Colors.black,
                // disabledBackgroundColor:
                //     colorScheme.primary.withOpacity(0.6),
                backgroundColor: colorScheme.primary),
            child: const Text(
              "Submit",
              style: TextStyle(fontSize: 18),
            )),
      ],
    );
  }
}
