import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class ChallengePage extends StatelessWidget {
  const ChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: const BAppBars(title: "Report a challenge"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16.0),
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Complete this form to help us address your query",
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Complaint Category",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              ComponentSlideIns(
                                  beginOffset: const Offset(4.0, 0.0),
                                  duration: const Duration(milliseconds: 1000),
                                  child: CustomTextField(
                                    hintText: "Complaint Category",
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        showDropdownMenu(
                                            context,
                                            Padding(
                                                padding:
                                                    const EdgeInsets.all(18.0),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          // Handle option 1 selection
                                                        },
                                                        child: const Column(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  "Funds Transfer",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  "Bills / Airtime",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  "Savings / Investment",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ])),
                                            200);
                                      },
                                      child: Icon(
                                        Icons.arrow_drop_down_sharp,
                                        size: 32,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.all(20),
                                  )),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Subject",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 60,
                                child: ComponentSlideIns(
                                    beginOffset: const Offset(4.0, 0.0),
                                    duration:
                                        const Duration(milliseconds: 1200),
                                    child: CustomTextField(
                                      hintText: "Subject",
                                      contentPadding: const EdgeInsets.all(20),
                                    )),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Description",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 120,
                                child: ComponentSlideIns(
                                  beginOffset: const Offset(4.0, 0.0),
                                  duration: const Duration(milliseconds: 1400),
                                  child: TextField(
                                    maxLines:
                                        null, // Set maxLines to null for multi-line input
                                    expands:
                                        true, // Allow TextField to expand to fill its parent
                                    textAlignVertical: TextAlignVertical
                                        .top, // Align text to top
                                    decoration: InputDecoration(
                                        // border: InputBorder.none,
                                        hintText: "Tell us what happened",
                                        contentPadding: const EdgeInsets.all(
                                            10), // Remove padding around hint text

                                        hintStyle: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w400),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        filled: true,
                                        fillColor: Colors.grey.shade100),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: ComponentSlideIns(
                                    beginOffset: const Offset(-4.0, 0.0),
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 3, 85, 152),
                                          width: 2,
                                        ),
                                        color: const Color.fromARGB(
                                            241, 193, 221, 255),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.cloud_upload,
                                            size: 40,
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'Tap to upload transaction image',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colorScheme.primary,
                        foregroundColor: Colors.white,
                        elevation: 5,
                        fixedSize:
                            const Size(370, 50), // Set the width and height

                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
