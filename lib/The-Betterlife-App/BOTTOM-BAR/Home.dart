import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:the_betterlife_app/The-Betterlife-App/APP-BAR/Profile.dart';
import 'package:the_betterlife_app/The-Betterlife-App/MONEY-TRANSACTIONS/AddMoney.dart';
import 'package:the_betterlife_app/The-Betterlife-App/MONEY-TRANSACTIONS/SendMoney.dart';
import 'package:the_betterlife_app/The-Betterlife-App/QUICK-ACCESS/AirtimeDataCombo.dart';
import 'package:the_betterlife_app/The-Betterlife-App/QUICK-ACCESS/BillTabs.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/SlideAnimation.dart';

class BHome extends StatelessWidget {
  const BHome({super.key, title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  SlideAnimation(
                    page: BProfile(),
                  ),
                );
              },
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: const Color(0xFFE7E7E7),
                      radius: 22,
                      child: Icon(
                        Icons.account_circle,
                        size: 41,
                        color: const Color(0xFF252525).withOpacity(0.5),
                      )),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    "Hi Jonathan Smith Reyes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "support");
                  },
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: const Color(0xFF5C5C5C).withOpacity(0.5),
                    child: const Icon(
                      Icons.question_mark_outlined,
                      size: 18,
                      color: Color.fromARGB(245, 73, 73, 73),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "notify");
                  },
                  child: Icon(
                    Icons.notifications,
                    size: 28,
                    color: const Color(0xFF5C5C5C).withOpacity(0.9),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Column(
                children: [
                  const Account(),
                  const SizedBox(
                    height: 12,
                  ),
                  const Upgrade(),
                  const SizedBox(
                    height: 25,
                  ),
                  Access(),
                  const SizedBox(
                    height: 50,
                  ),
                  Transactions()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Text copied to clipboard')),
    );
  }

  bool isVisible = true;
  String accountNumber = "4004383940385";

  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(2.0, 0.0),
      endOffset: const Offset(0.0, 0.0),
      duration: const Duration(milliseconds: 1400),
      child: SizedBox(
        height: 170,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                height: 140,
                width: 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromARGB(255, 3, 85, 152),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Main Account Balance",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                              color: const Color(0xFF028306),
                              borderRadius: BorderRadius.circular(3)),
                          child: const Text(
                            "Active",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "₦ ${isVisible ? "0.00" : "***"}",
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: Icon(
                            isVisible ? Icons.visibility : Icons.visibility_off,
                            size: 26,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "Account number:$accountNumber",
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            copyToClipboard(accountNumber);
                          },
                          child: const Icon(
                            Icons.copy,
                            size: 20,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 65,
                child: Container(
                  height: 48,
                  width: 260,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 135, 201, 255),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          backgroundColor:
                              const Color.fromARGB(255, 112, 191, 255),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            SlideAnimation(
                              page: const BAddMoney(),
                            ),
                          );
                        },
                        child: const Text(
                          "Add money",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 37, 68),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          backgroundColor:
                              const Color.fromARGB(255, 112, 191, 255),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            SlideAnimation(
                              page: const BSendMoney(),
                            ),
                          );
                        },
                        child: const Text(
                          "Send Money",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 37, 68),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class Upgrade extends StatelessWidget {
  const Upgrade({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(-2.0, 0.0),
      endOffset: const Offset(0.0, 0.0),
      duration: const Duration(milliseconds: 1300),
      child: Row(
        children: [
          Container(
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0.5,
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Card(
              elevation: 2,
              surfaceTintColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(
                  10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.upgrade,
                          size: 28,
                          color: Color.fromARGB(255, 3, 85, 152),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Upgrade your Betterlife Account",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700)),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                                "Verify your identity to improve limits on your account",
                                style: TextStyle(
                                  fontSize: 12,
                                )),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Tap here to upgrade now",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: -0.6,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 3, 85, 152),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Access extends StatelessWidget {
  Access({super.key});
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
      "iconColor": const Color.fromARGB(255, 3, 85, 152),
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
      beginOffset: const Offset(2.0, 0.0),
      endOffset: const Offset(0.0, 0.0),
      duration: const Duration(milliseconds: 1300),
      child: Column(
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
                              color: items[index]["iconColor"],
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

class Transactions extends StatelessWidget {
  Transactions({super.key});

  final List transactions = [
    {
      "icon": Icons.shopping_cart,
      "price": 100,
      "title": 'Shopping',
      "date": DateTime.now(),
    },
    {
      "icon": Icons.restaurant,
      "price": 50,
      "title": 'Dinner',
      "date": DateTime.now().subtract(const Duration(days: 6)),
    },
    {
      "icon": Icons.local_grocery_store,
      "price": 200,
      "title": 'Groceries',
      "date": DateTime.now().subtract(const Duration(days: 4)),
    },
    {
      "icon": Icons.tv,
      "price": 250,
      "title": 'Hulu',
      "date": DateTime.now().subtract(const Duration(days: 3)),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: const Offset(-2.0, 0.0),
      endOffset: const Offset(0.0, 0.0),
      duration: const Duration(milliseconds: 1400),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Transactions",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "View All",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 3, 85, 152),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 400,
          child: ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    tileColor: const Color.fromARGB(255, 192, 209, 223)
                        .withOpacity(0.2),
                    leading: CircleAvatar(
                      radius: 18,
                      child: Icon(
                        transactions[index]['icon'],
                        size: 17,
                        color: const Color.fromARGB(255, 3, 85, 152),
                      ),
                    ),
                    trailing: Text(
                      "₦${transactions[index]['price'].toString()}.00",
                      style: const TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                    title: Text(transactions[index]['title'],
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16)),
                    subtitle: Text(
                      DateFormat('MMM d, y @H:mm')
                          .format(transactions[index]['date']),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  )
                ],
              );
            },
          ),
        )
      ]),
    );
  }
}



// Main theme Color:  Color.fromARGB(255, 3, 85, 152),
// Lightest shade : const Color.fromARGB(228, 211, 231, 255)
// Medium Light shade : const Color.fromARGB(241, 193, 221, 255),