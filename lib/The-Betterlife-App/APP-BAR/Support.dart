import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/AppBars.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class BSupport extends StatelessWidget {
  BSupport({super.key});

  final List items = [
    {
      "mainIcon": Icons.note_alt_sharp,
      "mainTitle": "Check FAQs",
      "subTitle": "Read our extensive help articles",
      "sideIcon": Icons.arrow_forward_ios,
    },
    {
      "mainIcon": Icons.email,
      "mainTitle": "Contact customer support",
      "subTitle": "Seek help from our support team",
      "sideIcon": Icons.arrow_forward_ios,
    },
    {
      "mainIcon": Icons.info,
      "mainTitle": "How to get a loan",
      "subTitle": "Learn how to get a loan in easy steps",
      "sideIcon": Icons.arrow_forward_ios,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppBars(title: "Support"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
            child: Text("How can we help you today?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ComponentSlideIns(
              beginOffset: const Offset(-2.0, 0.0),
              endOffset: const Offset(0.0, 0.0),
              duration: const Duration(milliseconds: 1000),
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.pushNamed(context, '');
                            } else if (index == 1) {
                              Navigator.pushNamed(context, 'challenge');
                            } else if (index == 2) {
                              Navigator.pushNamed(context, 'gettingLoan');
                            }
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 28,
                              child: Icon(
                                items[index]["mainIcon"],
                                size: 28,
                                color: const Color.fromARGB(255, 3, 85, 152),
                              ),
                            ),
                            trailing: Icon(
                              items[index]["sideIcon"],
                              size: 16,
                              color: const Color.fromARGB(255, 32, 32, 32),
                            ),
                            subtitle: Text(items[index]["subTitle"]),
                            title: Text(items[index]["mainTitle"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                        ),
                        const Divider(
                          height: 12,
                        )
                      ],
                    );
                  })),
            ),
          )
        ],
      ),
    );
  }
}
