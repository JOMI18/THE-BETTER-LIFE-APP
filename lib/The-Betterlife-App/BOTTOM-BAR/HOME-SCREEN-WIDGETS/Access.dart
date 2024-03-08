import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";
// import 'package:url_launcher/url_launcher.dart';

class Access extends StatefulWidget {
  Access({super.key, required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  State<Access> createState() => _AccessState();
}

class _AccessState extends State<Access> {
  final List items = [
    {
      "mainIcon": Icons.location_on_sharp,
      "mainTitle": "Betterlife",
      "iconColor": const Color.fromARGB(255, 232, 186, 17),
      "page": "",
    },
    {
      "mainIcon": Icons.phone_android_rounded,
      "mainTitle": "Buy Airtime",
      "iconColor": null,
      "page": AirtimeDataCombo(),
    },
    {
      "mainIcon": Icons.view_list_sharp,
      "mainTitle": "Pay Bills",
      "iconColor": const Color.fromARGB(255, 2, 119, 63),
      "page": BillTabs(),
    },
    {
      "mainIcon": Icons.messenger,
      "mainTitle": "Send Texts",
      "iconColor": const Color.fromARGB(255, 239, 44, 109),
      "page": "",
    },
    {
      "mainIcon": Icons.tv,
      "mainTitle": "Cable Tv",
      "iconColor": Color.fromARGB(255, 39, 3, 184),
      "page": "",
    },
    {
      "mainIcon": Icons.lightbulb,
      "mainTitle": "Electricity",
      "iconColor": Color.fromARGB(255, 228, 205, 0),
      "page": "",
    },
    {
      "mainIcon": Icons.account_tree_rounded,
      "mainTitle": "Transfers",
      "iconColor": Color.fromARGB(255, 166, 12, 30),
      "page": "",
    },
    {
      "mainIcon": Icons.stacked_bar_chart,
      "mainTitle": "Loans",
      "iconColor": Color.fromARGB(255, 3, 157, 184),
      "page": BLoans(),
    },
  ];

  // final Uri url = Uri.parse('https://pub.dev/packages/url_launcher');

  void _launchURL() async {
    print("reaching");
    // if (!await launchUrl(url)) {
    //   throw Exception('Could not launch $url');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(4.0, 0.0),
      duration: const Duration(milliseconds: 1300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Quick Access",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 180,
            width: 380,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                // scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (items[index]["page"] != "") {
                            Navigator.of(context).push(
                              SlideAnimation(
                                page: items[index]["page"],
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              ),
                            );
                          }
                          if (items[index]["mainTitle"] == "Betterlife") {
                            _launchURL();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(80, 75),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.all(0),
                          foregroundColor: Colors.grey.shade800,
                          backgroundColor: Colors.grey.shade200,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              items[index]["mainIcon"],
                              color: items[index]["iconColor"] ??
                                  widget.colorScheme.primary,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              items[index]["mainTitle"],
                              style: const TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
