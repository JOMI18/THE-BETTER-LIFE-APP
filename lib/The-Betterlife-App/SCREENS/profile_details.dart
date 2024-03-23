import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

// Icons.arrow_forward_ios
class BProfileInfo extends StatelessWidget {
  BProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
            surfaceTintColor: Colors.white,
            elevation: 2,
            child: ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomAlertDialog(
                          icon: (Icons.warning_rounded),
                          iconColor: Colors.amberAccent,
                          title: "Are you sure you want to close your account?",
                          content: Column(children: [
                            ComponentSlideIns(
                              beginOffset: const Offset(4.0, 0.0),
                              duration: const Duration(milliseconds: 600),
                              child: const Text(
                                "Please give us 1 working day to review this request so that we can:",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 55, 55, 55)),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ComponentSlideIns(
                              beginOffset: const Offset(4.0, 0.0),
                              duration: const Duration(milliseconds: 700),
                              child: const Text(
                                "1)  Ensure adherence to CBN regulations around transaction history",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 55, 55, 55)),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ComponentSlideIns(
                              beginOffset: const Offset(4.0, 0.0),
                              duration: const Duration(milliseconds: 800),
                              child: const Text(
                                "2)  Ensure there is no balance remaining on your account or loan repayments to be settled",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 55, 55, 55)),
                              ),
                            ),
                          ]),
                          actions: [
                            Column(
                              children: [
                                ComponentSlideIns(
                                  beginOffset: const Offset(0.0, -6.0),
                                  duration: const Duration(milliseconds: 700),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();

                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return CustomAlertDialog(
                                                icon: (Icons
                                                    .delete_sweep_rounded),
                                                iconColor: const Color.fromARGB(
                                                    255, 255, 17, 0),
                                                title: "Close Account",
                                                content: ComponentSlideIns(
                                                  beginOffset:
                                                      const Offset(-2.0, 0.0),
                                                  duration: const Duration(
                                                      milliseconds: 1200),
                                                  child: const Text(
                                                    "You are about to delete your profile. Please note that when you delete your profile your previous transactions are not deleted",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                actions: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 8.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        TextButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          style:
                                                              popUpButtonStyle(),
                                                          child: const Text(
                                                              "Close Account",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900)),
                                                        ),
                                                        TextButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          style:
                                                              popUpButtonStyle(),
                                                          child: const Text(
                                                              "Not now",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ]);
                                          });
                                    },
                                    style: ButtonStyle(
                                      overlayColor:
                                          const MaterialStatePropertyAll(Colors
                                              .transparent), // only works with buttonstyle
                                      backgroundColor: MaterialStatePropertyAll(
                                          colorScheme.surfaceVariant),
                                      surfaceTintColor:
                                          const MaterialStatePropertyAll(
                                              Colors.white),

                                      elevation:
                                          const MaterialStatePropertyAll(0),

                                      // splashFactory: NoSplash
                                      //     .splashFactory, // Remove the splash effect
                                      fixedSize: const MaterialStatePropertyAll(
                                          Size(370, 50)),

                                      padding: const MaterialStatePropertyAll(
                                          EdgeInsets.all(10)),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Continue",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                ComponentSlideIns(
                                  beginOffset: const Offset(0.0, -5.0),
                                  duration: const Duration(milliseconds: 800),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: colorScheme.primary,
                                        foregroundColor: Colors.white,
                                        elevation: 5,
                                        fixedSize: const Size(370,
                                            50), // Set the width and height

                                        padding: const EdgeInsets.all(10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        )),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Keep account Open",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: const Size(50, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  foregroundColor: const Color.fromARGB(255, 213, 3, 3),
                ),
                icon: const Icon(Icons.delete),
                label: const Text("Close Account"))),
        appBar: const BAppBars(
          title: "Profile",
        ),
        body: SingleChildScrollView(child: ProfileDetailsBody()));
  }
}
