import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/AppBars.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class BPayments extends StatelessWidget {
  BPayments({super.key});

  final List items = [
    {
      "mainIcon": Icons.monetization_on,
      "mainTitle": "Add money",
      "subTitle": "Add money to your Betterlife account",
      "iconColor": const Color.fromARGB(255, 43, 0, 255),
      "route": "addMoney",
    },
    {
      "mainIcon": Icons.ios_share_sharp,
      "mainTitle": "Send money ",
      "subTitle": "Purchase airtime & data",
      "iconColor": const Color.fromARGB(255, 255, 0, 111),
      "route": "sendMoney",
    },
    {
      "mainIcon": Icons.phone_android,
      "mainTitle": "Airtime/Data",
      "subTitle": "Add money to your Betterlife account",
      "iconColor": const Color.fromARGB(255, 239, 68, 255),
      "route": "dataAirtime",
    },
    {
      "mainIcon": Icons.tv,
      "mainTitle": "Pay a bill",
      "subTitle": "Pay bills easily from your Betterlife",
      "iconColor": Colors.amberAccent,
      "route": "payBills",
    },
    {
      "mainIcon": Icons.shopping_cart,
      "mainTitle": "Betterlife",
      "subTitle": "Split your purchases with Betterlife",
      "iconColor": Colors.green.shade700,
      "route": "",
    },
    {
      "mainIcon": Icons.money_outlined,
      "mainTitle": "Recurring payments",
      "subTitle": "Manage your recurring payments",
      "iconColor": const Color.fromARGB(255, 47, 0, 129),
      "route": "",
    },
    {
      "mainIcon": Icons.call_to_action_rounded,
      "mainTitle": "Saved payments",
      "subTitle": "Repeat a bill,airtime or date payment",
      "iconColor": const Color.fromARGB(255, 0, 108, 129),
      "route": "",
    },
    {
      "mainIcon": Icons.add_card_rounded,
      "mainTitle": "Card ",
      "subTitle": "View debit card details and benefits",
      "iconColor": Colors.pinkAccent,
      "route": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppBars(
        title: "Payments",
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 40,
            ),
            itemCount: items.length,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, items[index]["route"]);
                    },
                    child: ComponentSlideIns(
                      beginOffset: const Offset(0, -4.0),
                      duration: const Duration(milliseconds: 1000),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: 180,
                        height: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade500,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              child: Icon(
                                items[index]["mainIcon"],
                                size: 26,
                                color: items[index]["iconColor"],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(items[index]["mainTitle"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16)),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(items[index]["subTitle"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 19, 19, 19))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
