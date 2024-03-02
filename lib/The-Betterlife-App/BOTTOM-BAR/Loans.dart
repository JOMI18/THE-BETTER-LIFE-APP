import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/AppBars.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class BLoans extends StatelessWidget {
  const BLoans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppBars(
        title: "Loans",
        trailing: Padding(
          padding: const EdgeInsets.all(6),
          child: CircleAvatar(
            radius: 16,
            backgroundColor:
                const Color.fromARGB(255, 46, 46, 46).withOpacity(0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "support");
              },
              child: const Icon(
                Icons.question_mark_outlined,
                size: 18,
                color: Color.fromARGB(255, 24, 24, 24),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            ComponentSlideIns(
              beginOffset: Offset(0.0, -2.0),
              duration: Duration(milliseconds: 1400),
              child: const Card(
                elevation: 4,
                color: Color.fromARGB(228, 211, 231, 255),
                surfaceTintColor: Colors.white,
                child: SizedBox(
                  width: 600,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
                    child: Column(
                      children: [
                        Text(
                          "Total left to pay",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 56, 56, 56),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "₦0",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ComponentSlideIns(
              beginOffset: Offset(2.0, 0.0),
              duration: Duration(milliseconds: 1200),
              child: Card(
                elevation: 0,
                color: Colors.white,
                surfaceTintColor: Colors.white,
                child: SizedBox(
                  width: 600,
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.monetization_on,
                          size: 80,
                          color: Color.fromARGB(255, 45, 159, 91),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "You do not currently have an active loan. Upgrade to KYC L2 and above to apply for a loan.",
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
                              backgroundColor: Color.fromARGB(255, 3, 85, 152),
                              foregroundColor: Colors.white,
                              elevation: 5,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: const Text(
                            "Get a Loan",
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
            const SizedBox(
              height: 20,
            ),
            ComponentSlideIns(
              beginOffset: Offset(0.0, 2.0),

              child: Card(
                elevation: 5,
                color: Colors.white,
                surfaceTintColor: Colors.white,
                child: SizedBox(
                  width: 600,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Upgrade to KYC",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  letterSpacing: -0.2),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Upgrade to KYC to be able to apply and get loan offers.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 56, 56, 56),
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Upgrade to KYC",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 3, 85, 152),
                                    fontSize: 16),
                              ),
                            ),
                          ],
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
