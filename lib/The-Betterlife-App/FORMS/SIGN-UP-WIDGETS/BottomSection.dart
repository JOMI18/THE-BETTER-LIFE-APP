import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});


  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return ComponentSlideIns(
      beginOffset: Offset(0, 2),
      duration: Duration(milliseconds: 1200),
      child: Column(
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
            height: 8,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 5,
                fixedSize: Size(350, 60),
                backgroundColor: colorScheme.primary,
                foregroundColor: Colors.white,

                // disabledForegroundColor: Colors.black,
                // disabledBackgroundColor:
                //     colorScheme.primary.withOpacity(0.6),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),

            // onPressed: null,

            onPressed: () {
              Navigator.of(context)
                  .push(SlideAnimation(page: BsignUpPasswordScreen()));
            },
            child: Text(
              "Continue",
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade900),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "logIn");
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: colorScheme.primary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
