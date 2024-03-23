import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:classapp/AppTemplates/The-Betterlife-App/ImportsPath.dart';

class LoanPageView extends StatefulWidget {
  const LoanPageView({super.key});

  @override
  State<LoanPageView> createState() => _LoanPageViewState();
}

class _LoanPageViewState extends State<LoanPageView> {
  final PageController _loanController = PageController();

  final List applyLoan = [
    {"title": "Provide a bank statement"},
    {"title": "Have a good credit & repayment history"},
    {"title": "Update your profile information"},
    {"title": "Transact more with Betterlife"}
  ];
  final List acceptOffer = [
    {
      "title":
          "Choose a loan offer and the repayment period to see your payment plan"
    },
    {
      "title":
          "You can set up to \$30k on your first loan  and up to \$1M on subsequent loans"
    },
    {"title": "Loan offers are based on your repayment and credit profile"},
  ];
  final List repayLoan = [
    {
      "title":
          "Ass your other bank card to get your funds in your Betterlife account"
    },
    {
      "title":
          "Ensure your loan repayments are made on time. Fees apply for late repayment"
    },
    {
      "title": "Enjoy your Betterlife loan! ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: PageView(
        controller: _loanController, // Pass the PageController to the PageView

        scrollDirection: Axis.horizontal,
        children: [
          Column(children: [
            Container(
              height: 440,
              width: 400,
              color: colorScheme.surfaceVariant,
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1676983352679-38e7f54602f9?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                fit: BoxFit.cover,
                height: 440,
                width: 400,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
                child: SmoothPageIndicator(
              controller: _loanController,
              count: 3,
              effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: colorScheme.primary),
            )),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 115,
              height: 23,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(174, 255, 220, 231),
                  borderRadius: BorderRadius.circular(50)),
              child: const Text(
                "Welcome guide",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              "Apply for a Loan",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Expanded(
              child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: applyLoan.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          radius: 14,
                          child: Icon(
                            Icons.check,
                            size: 18,
                            color: Theme.of(context).iconTheme.color,
                          )),
                      title: Text(applyLoan[index]["title"]),
                      // trailing: Icon(applyLoan[index]["icon"]),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.primary,
                    foregroundColor: Colors.white,
                    elevation: 5,
                    fixedSize: const Size(800, 50),
                    padding: const EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Next"),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_right_alt_outlined)
                  ],
                ),
              ),
            ),
          ]),
          Column(children: [
            Container(
              height: 440,
              width: 400,
              color: colorScheme.surfaceVariant,
              child: Image.network(
                "https://images.unsplash.com/photo-1609921205586-7e8a57516512?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aXBob25lJTIwMTUlMjBsb2FufGVufDB8fDB8fHww",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
                child: SmoothPageIndicator(
              controller: _loanController,
              count: 3,
              effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: colorScheme.primary),
            )),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 115,
              height: 23,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(174, 255, 220, 231),
                  borderRadius: BorderRadius.circular(50)),
              child: const Text(
                "Welcome guide",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              "Accept Offer",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Expanded(
              child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: acceptOffer.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          radius: 14,
                          child: Icon(
                            Icons.check,
                            color: Theme.of(context).iconTheme.color,
                            size: 18,
                          )),
                      title: Text(acceptOffer[index]["title"]),
                    );
                  }),
            ),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colorScheme.surfaceVariant,
                          foregroundColor: Theme.of(context).iconTheme.color,
                          elevation: 5,
                          fixedSize:
                              const Size(100, 50), // Set the width and height

                          padding: const EdgeInsets.all(12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back_sharp),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Back"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colorScheme.primary,
                          foregroundColor: Colors.white,
                          elevation: 5,
                          fixedSize:
                              const Size(260, 50), // Set the width and height

                          padding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Next"),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_right_alt_outlined)
                        ],
                      ),
                    ),
                  ],
                )),
          ]),
          Column(children: [
            Container(
              height: 440,
              width: 400,
              color: colorScheme.surfaceVariant,
              child: Image.network(
                "https://images.unsplash.com/photo-1599202875854-23b7cd490ff4?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
                child: SmoothPageIndicator(
              controller: _loanController,
              count: 3,
              effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: colorScheme.primary),
            )),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 115,
              height: 23,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(174, 255, 220, 231),
                  borderRadius: BorderRadius.circular(50)),
              child: const Text(
                "Welcome guide",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              "Repay your loan",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Expanded(
              child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: repayLoan.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          radius: 14,
                          child: Icon(
                            Icons.check,
                            color: Theme.of(context).iconTheme.color,
                            size: 18,
                          )),
                      title: Text(repayLoan[index]["title"]),
                    );
                  }),
            ),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colorScheme.surfaceVariant,
                          foregroundColor: Theme.of(context).iconTheme.color,
                          elevation: 5,
                          fixedSize:
                              const Size(100, 50), // Set the width and height

                          padding: const EdgeInsets.all(12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back_sharp),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Back"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colorScheme.primary,
                          foregroundColor: Colors.white,
                          elevation: 5,
                          fixedSize:
                              const Size(260, 50), // Set the width and height

                          padding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Finish"),
                        ],
                      ),
                    ),
                  ],
                )),
          ]),
        ],
      ),
      floatingActionButton: Container(
        width: 25,
        height: 25,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: const Color.fromARGB(217, 172, 172, 172),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: const Icon(
            Icons.close,
            size: 20,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
