import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/AppBars.dart';
import 'package:the_betterlife_app/The-Betterlife-App/TRANSITION/ItemSlideIns.dart';

class BSendMoney extends StatelessWidget {
  const BSendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppBars(title: "Send Money"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ComponentSlideIns(
                beginOffset: Offset(2.0, 0.0),
                endOffset: Offset(0.0, 0.0),
                duration: Duration(milliseconds: 1000),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(228, 211, 231, 255),
                      borderRadius: BorderRadius.circular(8)),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 148, 194, 251)
                              .withOpacity(0.7),
                          child: Icon(
                            Icons.add_circle,
                            color: Color.fromARGB(255, 3, 85, 152),
                            size: 24,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "New Recipient",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Send money to any bank account",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ContactsCard(),
              const SizedBox(
                height: 20,
              ),
              const TransferCard(),
              const SizedBox(
                height: 20,
              ),
              const BeneficiaryCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactsCard extends StatelessWidget {
  const ContactsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 400,
      child: ComponentSlideIns(
        beginOffset: Offset(2.0, 0.0),
        endOffset: Offset(0.0, 0.0),
        duration: Duration(milliseconds: 1100),
        child: Card(
          elevation: 8,
          surfaceTintColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(228, 211, 231, 255),
                  radius: 50,
                  child: const Icon(
                    Icons.contact_phone_sharp,
                    color: Color.fromARGB(255, 3, 85, 152),
                    size: 60,
                  ),
                ),
                const SizedBox(height: 10),
                const Text("No contact access",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                const SizedBox(height: 10),
                Text(
                    "Grant us access to your contact list, this will enable Betterlife to allow you choose which friends to transact with. ",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 15, color: Colors.grey.shade800)),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(228, 211, 231, 255),
                        foregroundColor: Color.fromARGB(255, 3, 85, 152),
                        elevation: 5,
                        fixedSize: const Size(500, 50),
                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Text(
                      "Allow access",
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TransferCard extends StatelessWidget {
  const TransferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 400,
      child: ComponentSlideIns(
        beginOffset: Offset(2.0, 0.0),
        endOffset: Offset(0.0, 0.0),
        duration: Duration(milliseconds: 1200),
        child: Card(
          elevation: 8,
          surfaceTintColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(228, 211, 231, 255),
                  radius: 50,
                  child: const Icon(
                    Icons.note_alt_sharp,
                    color: Color.fromARGB(255, 3, 85, 152),
                    size: 60,
                  ),
                ),
                const SizedBox(height: 10),
                const Text("No recent transfers",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                const SizedBox(height: 10),
                Text("You have not made any transfers recently ",
                    style:
                        TextStyle(fontSize: 15, color: Colors.grey.shade800)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BeneficiaryCard extends StatelessWidget {
  const BeneficiaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 400,
      child: ComponentSlideIns(
        beginOffset: Offset(2.0, 0.0),
        endOffset: Offset(0.0, 0.0),
        duration: Duration(milliseconds: 1300),
        child: Card(
          elevation: 8,
          surfaceTintColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(228, 211, 231, 255),
                  radius: 50,
                  child: const Icon(
                    Icons.people_alt_sharp,
                    color: Color.fromARGB(255, 3, 85, 152),
                    size: 60,
                  ),
                ),
                const SizedBox(height: 10),
                const Text("No beneficiary saved yet",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                const SizedBox(height: 10),
                Text(
                    "You don't have any beneficiary saved yet.When you do, they will show up here. ",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 15, color: Colors.grey.shade800)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
