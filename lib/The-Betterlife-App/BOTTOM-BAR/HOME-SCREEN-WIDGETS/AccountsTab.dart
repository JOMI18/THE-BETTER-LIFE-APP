import 'package:flutter/material.dart';
import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";

class Account extends StatefulWidget {
  const Account({super.key, required this.colorScheme});
  final ColorScheme colorScheme;

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
      beginOffset: const Offset(4.0, 0.0),
      duration: const Duration(milliseconds: 1400),
      child: SizedBox(
        height: 170,
        width: 500,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: widget.colorScheme.primary,
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
                              color: const Color.fromARGB(255, 1, 157, 7),
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
                      color: const Color.fromARGB(255, 190, 219, 255),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            backgroundColor: widget.colorScheme.surfaceVariant),
                        onPressed: () {
                          Navigator.of(context).push(
                            SlideAnimation(
                              page: BAddMoney(),
                            ),
                          );
                        },
                        child: const Text(
                          "Add money",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            backgroundColor: widget.colorScheme.surfaceVariant),
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
                            color: Colors.black,
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
