import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class buildEmailField extends StatefulWidget {
  const buildEmailField({super.key});

  @override
  State<buildEmailField> createState() => _buildEmailFieldState();
}

class _buildEmailFieldState extends State<buildEmailField> {
  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(4, 0),
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Email",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'johnsmith@gmail.com',
          ),
        ],
      ),
    );
  }
}

class buildNumberField extends StatefulWidget {
  const buildNumberField({super.key});

  @override
  State<buildNumberField> createState() => _buildNumberFieldState();
}

class _buildNumberFieldState extends State<buildNumberField> {
  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(-4, 0),
      duration: const Duration(milliseconds: 1200),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Country Code",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    hintText: 'Select',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        showDropdownMenu(
                            context,
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Handle option 1 selection
                                    },
                                    child: const Row(children: [
                                      Text(
                                        '(+234)',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Nigeria",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                  ),
                                  Divider(
                                    height: 20,
                                    color: Colors.grey.shade500,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // Handle option 1 selection
                                    },
                                    child: const Row(children: [
                                      Text(
                                        '(+1)',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "United States of America",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                  ),
                                  Divider(
                                    height: 20,
                                    color: Colors.grey.shade500,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // Handle option 1 selection
                                    },
                                    child: const Row(children: [
                                      Text(
                                        '(+44)',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "United Kingdom",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                  ),
                                  Divider(
                                    height: 20,
                                    color: Colors.grey.shade500,
                                  ),
                                ],
                              ),
                            ),
                            200);
                      },
                      child: const Icon(
                        Icons.arrow_drop_down_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Phone Number",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: 'xxxx-xxxx-xxx',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
