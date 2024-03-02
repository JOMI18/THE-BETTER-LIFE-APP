import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/TabBars.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class BSavings extends StatefulWidget {
  BSavings({super.key});

  @override
  State<BSavings> createState() => _BSavingsState();
}

class _BSavingsState extends State<BSavings> {
  int selectedIndex = 0;

  final List<String> tabTitles = ["Active", "Pending", "Completed"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TabBarsViews(
          dynamicTitle: "My Savings --",
          title: tabTitles[selectedIndex],
          tabTitles: tabTitles,
          tabViews: [const Active(), const Pending(), const Completed()],
          onTabChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class Active extends StatelessWidget {
  const Active({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ComponentSlideIns(
        beginOffset: const Offset(2.0, 0.0),
        duration: const Duration(milliseconds: 1400),
        child: Column(
          children: [
            Container(
              height: 140,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              width: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 66, 34, 108),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total Balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "₦ 0",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 66, 34, 108),
                        foregroundColor: Colors.white,
                        elevation: 5,
                        fixedSize: const Size(120, 40),
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Text(
                      "Get a Loan",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ComponentSlideIns(
              beginOffset: const Offset(-6.0, 0.0),
              duration: const Duration(milliseconds: 1200),
              child: Card(
                elevation: 0,
                color: Colors.white,
                surfaceTintColor: Colors.white,
                child: SizedBox(
                  width: 600,
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color.fromARGB(228, 211, 231, 255),
                          radius: 50,
                          child: Icon(
                            Icons.savings_outlined,
                            size: 70,
                            color: Color.fromARGB(255, 3, 85, 152),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "No Savings Created Yet",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 56, 56, 56),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "When you save, the details of your plan will appear here",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 56, 56, 56),
                              fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 85, 152),
                              foregroundColor: Colors.white,
                              elevation: 5,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: const Text(
                            "Create a Savings Plan",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pending extends StatelessWidget {
  const Pending({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ComponentSlideIns(
        beginOffset: const Offset(2.0, 0.0),
        duration: const Duration(milliseconds: 1400),
        child: Column(
          children: [
            Container(
              height: 140,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              width: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 66, 34, 108),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total Balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "₦ 0",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 66, 34, 108),
                        foregroundColor: Colors.white,
                        elevation: 5,
                        fixedSize: const Size(120, 40),
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Text(
                      "Get a Loan",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ComponentSlideIns(
              beginOffset: const Offset(-6.0, 0.0),
              duration: const Duration(milliseconds: 1200),
              child: Card(
                elevation: 0,
                color: Colors.white,
                surfaceTintColor: Colors.white,
                child: SizedBox(
                  width: 600,
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color.fromARGB(228, 211, 231, 255),
                          radius: 50,
                          child: Icon(
                            Icons.savings_outlined,
                            size: 70,
                            color: Color.fromARGB(255, 3, 85, 152),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "No Savings Created Yet",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 56, 56, 56),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "When you save, the details of your plan will appear here",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 56, 56, 56),
                              fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 85, 152),
                              foregroundColor: Colors.white,
                              elevation: 5,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: const Text(
                            "Create a Savings Plan",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ComponentSlideIns(
        beginOffset: const Offset(2.0, 0.0),
        duration: const Duration(milliseconds: 1400),
        child: Column(
          children: [
            Container(
              height: 140,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              width: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 66, 34, 108),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total Balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "₦ 0",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 66, 34, 108),
                        foregroundColor: Colors.white,
                        elevation: 5,
                        fixedSize: const Size(120, 40),
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Text(
                      "Get a Loan",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ComponentSlideIns(
              beginOffset: const Offset(-6.0, 0.0),
              duration: const Duration(milliseconds: 1200),
              child: Card(
                elevation: 0,
                color: Colors.white,
                surfaceTintColor: Colors.white,
                child: SizedBox(
                  width: 600,
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color.fromARGB(228, 211, 231, 255),
                          radius: 50,
                          child: Icon(
                            Icons.savings_outlined,
                            size: 70,
                            color: Color.fromARGB(255, 3, 85, 152),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "No Savings Created Yet",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 56, 56, 56),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "When you save, the details of your plan will appear here",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 56, 56, 56),
                              fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 85, 152),
                              foregroundColor: Colors.white,
                              elevation: 5,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: const Text(
                            "Create a Savings Plan",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
