import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/TextField.dart';
import 'package:the_betterlife_app/The-Betterlife-App/POPUPS/BottomPopUps.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class ResetPIN extends StatelessWidget {
  const ResetPIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSlideIns(
                beginOffset: Offset(2, 0),
                duration: Duration(milliseconds: 600),
                child: const Text(
                  "Reset PIN",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              ComponentSlideIns(
                beginOffset: Offset(2, 0),
                duration: Duration(milliseconds: 800),
                child: Text(
                  "To help protect you, please confirm the phone number registered on your Betterlife account and your date of birth",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ComponentSlideIns(
                beginOffset: Offset(-2, 0),
                duration: Duration(milliseconds: 1000),
                child: Row(
                  children: [
                    Expanded(
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
                        SizedBox(
                          width: 120,
                          child: CustomTextField(
                            hintText: 'Select',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                showDropdownMenu(
                                    context,
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Row(children: [
                                              Text(
                                                '(+234)',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "Nigeria",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ]),
                                          ),
                                          Divider(
                                            height: 20,
                                            color: Colors.grey.shade500,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Row(children: [
                                              Text(
                                                '(+1)',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "United States of America",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ]),
                                          ),
                                          Divider(
                                            height: 20,
                                            color: Colors.grey.shade500,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Row(children: [
                                              Text(
                                                '(+44)',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "United Kingdom",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                        ),
                      ],
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 2,
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
                            SizedBox(
                              width: 900,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 10,
                                  ),
                                  filled: true,
                                  alignLabelWithHint: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  fillColor: Colors.grey.shade200,
                                  hintText: "xxxx-xxxx-xxx",
                                  hintStyle: const TextStyle(
                                    color: Color.fromARGB(255, 133, 133, 133),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ComponentSlideIns(
                beginOffset: Offset(-2, 0),
                duration: Duration(milliseconds: 1200),
                child: Row(
                  children: [
                    Expanded(
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
                        SizedBox(
                          child: CustomTextField(
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
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
