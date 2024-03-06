import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class Access extends StatelessWidget {
  Access({super.key, required this.colorScheme});

  final ColorScheme colorScheme;
  final List items = [
    {
      "mainIcon": Icons.shopping_cart,
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
      "mainIcon": Icons.tv,
      "mainTitle": "Pay Bills",
      "iconColor": const Color.fromARGB(255, 2, 119, 63),
      "page": BillTabs(),
    },
    {
      "mainIcon": Icons.credit_card,
      "mainTitle": "Cards",
      "iconColor": Colors.pink,
      "page": "",
    },
  ];

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
            height: 80,
            width: 380,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
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
                                  colorScheme.primary,
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
                      if (index != items.length - 1)
                        const SizedBox(
                          width: 20,
                        )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
