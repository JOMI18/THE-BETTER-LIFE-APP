import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/AppBars.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/PopUpButtons.dart';
import 'package:the_betterlife_app/The-Betterlife-App/POPUPS/CustomAlertDialog.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class BProfileInfo extends StatelessWidget {
  BProfileInfo({super.key});
  final List items = [
    {
      "mainIcon": Icons.format_align_center,
      "mainTitle": "Personal Details",
      "route": ""
    },
    {
      "mainIcon": Icons.account_balance,
      "mainTitle": "Bank Details",
      "route": ""
    },
    {
      "mainIcon": Icons.home_filled,
      "mainTitle": "Residential Details",
      "route": ""
    },
    {"mainIcon": Icons.work, "mainTitle": "Employment Details", "route": ""},
    {"mainIcon": Icons.people, "mainTitle": "Next of Kin", "route": ""},
  ];

  @override
  Widget build(BuildContext context) {
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
                            beginOffset: const Offset(2.0, 0.0),
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
                            beginOffset: const Offset(2.0, 0.0),
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
                            beginOffset: const Offset(2.0, 0.0),
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
                                              icon:
                                                  (Icons.delete_sweep_rounded),
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
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      style: popUpButtonStyle(),
                                                      child: const Text(
                                                          "Close Account",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900)),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      style: popUpButtonStyle(),
                                                      child: const Text(
                                                          "Not now",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900)),
                                                    ),
                                                  ],
                                                ),
                                              ]);
                                        });
                                  },
                                  style: ButtonStyle(
                                    overlayColor:
                                        const MaterialStatePropertyAll(
                                            Colors.transparent),
                                    backgroundColor: MaterialStatePropertyAll(
                                      const Color.fromARGB(255, 3, 85, 152)
                                          .withOpacity(0.1),
                                    ),
                                    surfaceTintColor:
                                        const MaterialStatePropertyAll(
                                            Colors.white),
                                    elevation:
                                        const MaterialStatePropertyAll(0),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Continue",
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
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
                                      backgroundColor:
                                          const Color.fromARGB(255, 3, 85, 152),
                                      foregroundColor: Colors.white,
                                      elevation: 5,
                                      fixedSize: const Size(370, 50),
                                      padding: const EdgeInsets.all(10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            decoration: BoxDecoration(
                color: const Color.fromARGB(228, 211, 231, 255),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor:
                        const Color.fromARGB(255, 3, 85, 152).withOpacity(0.8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Hi, Jonathan!",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "Change profile picture",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.camera_enhance,
                          size: 23,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 440,
            child: ComponentSlideIns(
              beginOffset: const Offset(2.0, 0.0),
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, items[index]["route"]);
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 20,
                              child: Icon(
                                items[index]["mainIcon"],
                                size: 22,
                                color: const Color.fromARGB(255, 3, 85, 152),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Color.fromARGB(255, 133, 133, 133),
                            ),
                            title: Text(items[index]["mainTitle"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16)),
                          ),
                        ),
                        const Divider(
                          height: 20,
                        )
                      ],
                    );
                  })),
            ),
          ),
          Container(
            height: 80,
            width: 380,
            decoration: BoxDecoration(
                color: const Color.fromARGB(228, 211, 231, 255),
                borderRadius: BorderRadius.circular(8)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.admin_panel_settings_rounded,
                  color: Color.fromARGB(255, 3, 85, 152),
                  size: 34,
                ),
                SizedBox(
                  width: 330,
                  child: Text(
                    "We don't share your personal details with anyone. This information is required soley for verification.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 85, 152),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
