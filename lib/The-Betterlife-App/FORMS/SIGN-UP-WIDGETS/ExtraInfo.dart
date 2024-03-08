import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class buildDOBField extends StatefulWidget {
  const buildDOBField({super.key});

  @override
  State<buildDOBField> createState() => _buildDOBFieldState();
}

class _buildDOBFieldState extends State<buildDOBField> {
  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(-2, 0),
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Date of Birth",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'mm/dd/yyyy',
            suffixIcon: GestureDetector(
              onTap: () {
                showCalendarPicker(context);
              },
              child: const Icon(
                Icons.calendar_today,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class buildGenderField extends StatefulWidget {
  const buildGenderField({super.key});

  @override
  State<buildGenderField> createState() => _buildGenderFieldState();
}

class _buildGenderFieldState extends State<buildGenderField> {
  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(2, 0),
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Gender",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'Gender',
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
                                "Male",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Handle option 1 selection
                            },
                            child: const Row(children: [
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                        ],
                      ),
                    ),
                    120);
              },
              child: const Icon(
                Icons.arrow_drop_down_sharp,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class buildNationalityField extends StatefulWidget {
  const buildNationalityField({super.key});

  @override
  State<buildNationalityField> createState() => _buildNationalityFieldState();
}

class _buildNationalityFieldState extends State<buildNationalityField> {
  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(-2, 0),
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Nationality",
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
                                "Nigeria",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Handle option 1 selection
                            },
                            child: const Row(children: [
                              Text(
                                "United States of America",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Handle option 1 selection
                            },
                            child: const Row(children: [
                              Text(
                                "United Kingdom",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                        ],
                      ),
                    ),
                    150);
              },
              child: const Icon(
                Icons.arrow_drop_down_sharp,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
