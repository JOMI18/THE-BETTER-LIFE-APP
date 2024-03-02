import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/TabBars.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class AirtimeDataCombo extends StatefulWidget {
  AirtimeDataCombo({super.key});

  @override
  State<AirtimeDataCombo> createState() => _AirtimeDataComboState();
}

class _AirtimeDataComboState extends State<AirtimeDataCombo> {
  int selectedIndex = 0;
  final List<String> tabTitles = ["Buy Airtime", "Buy Data"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TabBarsViews(
          title: tabTitles[selectedIndex],
          tabTitles: tabTitles,
          tabViews: [
            const Airtime(),
            const Data(),
          ],
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

class Airtime extends StatelessWidget {
  const Airtime({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Beneficiary phone number",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 40,
                      ),
                      filled: true,
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      fillColor: Colors.grey.shade200,
                      hintText: " Enter phone number",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 133, 133, 133),
                      ),
                      prefixIcon: Container(
                        height: 0,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(0),
                                left: Radius.circular(8)),
                            color: Color.fromARGB(183, 148, 148, 148)),
                        child: const Icon(
                          Icons.phone_android_rounded,
                          color: Color.fromARGB(255, 65, 65, 65),
                          size: 28,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 200,
                width: 400,
                child: ComponentSlideIns(
                  beginOffset: const Offset(-4.0, 0),
                  duration: const Duration(milliseconds: 1200),
                  child: Card(
                    elevation: 4,
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color.fromARGB(228, 211, 231, 255),
                            radius: 50,
                            child: Icon(
                              Icons.credit_card,
                              color: Color.fromARGB(255, 3, 85, 152),
                              size: 70,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text("No recent payment",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700)),
                          const SizedBox(height: 10),
                          Text("You have not made any payment recently ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade800)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 240,
                width: 400,
                child: ComponentSlideIns(
                  beginOffset: const Offset(0.0, 4.0),
                  duration: const Duration(milliseconds: 1100),
                  child: Card(
                    elevation: 8,
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color.fromARGB(228, 211, 231, 255),
                            radius: 50,
                            child: Icon(
                              Icons.people_alt_sharp,
                              color: Color.fromARGB(255, 3, 85, 152),
                              size: 60,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text("No saved contact",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700)),
                          const SizedBox(height: 10),
                          Text(
                              "You currently have no saved contacts on your account.When you do, they will show up here. ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade800)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 3, 85, 152),
                      foregroundColor: Colors.white,
                      elevation: 5,
                      disabledBackgroundColor:
                          const Color.fromARGB(158, 3, 85, 152),
                      disabledForegroundColor: Colors.white,
                      fixedSize: const Size(500, 50),
                      padding: const EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: const Text("Proceed"))
            ],
          ),
        ),
      ),
    );
  }
}

class Data extends StatelessWidget {
  const Data({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Beneficiary phone number",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 40,
                      ),
                      filled: true,
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      fillColor: Colors.grey.shade200,
                      hintText: " Enter phone number",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 133, 133, 133),
                      ),
                      prefixIcon: Container(
                        height: 0,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(0),
                                left: Radius.circular(8)),
                            color: Color.fromARGB(183, 148, 148, 148)),
                        child: const Icon(
                          Icons.phone_android_rounded,
                          color: Color.fromARGB(255, 65, 65, 65),
                          size: 28,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 200,
                width: 400,
                child: ComponentSlideIns(
                  beginOffset: const Offset(4.0, 0),
                  duration: const Duration(milliseconds: 1200),
                  child: Card(
                    elevation: 4,
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color.fromARGB(228, 211, 231, 255),
                            radius: 50,
                            child: Icon(
                              Icons.credit_card,
                              color: Color.fromARGB(255, 3, 85, 152),
                              size: 70,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text("No recent payment",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700)),
                          const SizedBox(height: 10),
                          Text("You have not made any payment recently ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade800)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 240,
                width: 400,
                child: ComponentSlideIns(
                  beginOffset: const Offset(0.0, 4.0),
                  duration: const Duration(milliseconds: 1100),
                  child: Card(
                    elevation: 8,
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color.fromARGB(228, 211, 231, 255),
                            radius: 50,
                            child: Icon(
                              Icons.people_alt_sharp,
                              color: Color.fromARGB(255, 3, 85, 152),
                              size: 60,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text("No saved contact",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700)),
                          const SizedBox(height: 10),
                          Text(
                              "You currently have no saved contacts on your account.When you do, they will show up here. ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade800)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 3, 85, 152),
                      foregroundColor: Colors.white,
                      elevation: 5,
                      disabledBackgroundColor:
                          const Color.fromARGB(158, 3, 85, 152),
                      disabledForegroundColor: Colors.white,
                      fixedSize: const Size(500, 50),
                      padding: const EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: const Text("Proceed"))
            ],
          ),
        ),
      ),
    );
  }
}
