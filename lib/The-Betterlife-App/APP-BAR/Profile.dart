import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/AppBars.dart';
import 'package:the_betterlife_app/The-Betterlife-App/INDIRECT-NAVIGATION/FROM-ACCOUNT/ProfileDetails.dart';
import 'package:the_betterlife_app/The-Betterlife-App/POPUPS/SignOutAlert.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/SlideAnimation.dart';

class BProfile extends StatelessWidget {
  BProfile({super.key});
  final List items = [
    {
      "mainIcon": Icons.arrow_upward_rounded,
      "mainTitle": "Upgrade your account",
      "route": "",
      "page": "",
    },
    {
      "mainIcon": Icons.account_circle,
      "mainTitle": "Profile",
      "route": "profileInfo",
      "page": BProfileInfo(),
    },
    {
      "mainIcon": Icons.edit_document,
      "mainTitle": "Request Statement",
      "route": "",
      "page": "",
    },
    {
      "mainIcon": Icons.email,
      "mainTitle": "Support",
      "route": "support",
      "page": "",
    },
    {
      "mainIcon": Icons.credit_card,
      "mainTitle": "Cards and bank",
      "route": "",
      "page": "",
    },
    {
      "mainIcon": Icons.lock,
      "mainTitle": "Security settings",
      "route": "security",
      "page": "",
    },
    {
      "mainIcon": Icons.note_alt,
      "mainTitle": "Credit report",
      "route": "",
      "page": "",
    },
    {
      "mainIcon": Icons.format_line_spacing_rounded,
      "mainTitle": "Preferences",
      "route": "",
      "page": "",
    },
    {
      "mainIcon": Icons.double_arrow_outlined,
      "mainTitle": "Account limits",
      "route": "",
      "page": "",
    },
    {
      "mainIcon": Icons.account_balance,
      "mainTitle": "About Betterlife",
      "route": "",
      "page": "",
    },
    {
      "mainIcon": Icons.block_sharp,
      "mainTitle": "Sign out",
      "route": "signOut",
      "page": SignOutAlert(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppBars(title: "Account"),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            ComponentSlideIns(
              beginOffset:
                  Offset(0.0, -2.0), 
              endOffset: Offset(0.0, 0.0), 
              duration: Duration(milliseconds: 1000),
              child: Container(
                width: 400,
                padding: const EdgeInsets.all(12),
                color: Color.fromARGB(255, 3, 85, 152).withOpacity(0.4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.spa_rounded,
                        size: 41,
                        color: Color.fromARGB(255, 3, 85, 152),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Jonathan Smith Reyes",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.1),
                        ),
                        const Text("Client ID:2345678567",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 44, 44, 44))),
                        Text("Joined Feb 05, 2023",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade800))
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(6),
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Color(0xD5000000),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          "LEVEL 1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 81, 177, 255),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ComponentSlideIns(
                beginOffset: Offset(-2.0, 0.0),
                endOffset: Offset(0.0, 0.0),
                duration: Duration(milliseconds: 1200),
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, items[index]["route"]);
                        },
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (items[index]["page"] != "") {
                                  Navigator.of(context).push(
                                    SlideAnimation(
                                      page: items[index]["page"],
                                    ),
                                  );
                                } else if (items[index]["page"] != "" &&
                                    items[index]["route"] != "") {
                                  Navigator.of(context).push(
                                    SlideAnimation(
                                      page: items[index]["page"],
                                    ),
                                  );
                                }
                                if (items[index]["page"] == "" &&
                                    items[index]["route"] != "") {
                                  Navigator.pushNamed(
                                      context, items[index]["route"]);
                                }
                              },
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 20,
                                  child: Icon(
                                    items[index]["mainIcon"],
                                    size: 22,
                                    color: Color.fromARGB(255, 3, 85, 152),
                                  ),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Color.fromARGB(255, 133, 133, 133),
                                ),
                                title: Text(items[index]["mainTitle"],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16)),
                              ),
                            ),
                            const Divider(
                              height: 6,
                            )
                          ],
                        ),
                      );
                    })),
              ),
            )
          ],
        ),
      ),
    );
  }
}
