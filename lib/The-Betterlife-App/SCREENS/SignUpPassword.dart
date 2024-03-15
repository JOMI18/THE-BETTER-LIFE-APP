import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/Imports.dart';

class BsignUpPasswordScreen extends StatefulWidget {
  BsignUpPasswordScreen({super.key});

  @override
  State<BsignUpPasswordScreen> createState() => _BsignUpPasswordScreenState();
}

class _BsignUpPasswordScreenState extends State<BsignUpPasswordScreen> {
  final List<String> Items = [
    "All must be numbers",
    "Must be six in length"
    // "A lowercase letter (a)",
    // "An uppercase letter  (A)",
    // "A special character  (@#^%)",
    // "A number(1)",
    // "8 characters minimum"
  ];

  late TextEditingController? email;
  late TextEditingController? code;
  late TextEditingController? number;
  late TextEditingController? password;
  late TextEditingController? confirmPassword;

  bool isPasswordObscure = true;
  bool isConfirmPasswordObscure = true;

  final formKey = GlobalKey<FormState>();
  void showCountryCodes(Function(String) onSelect) {
    final List code = [
      {"code": "(+234)", "country": "Nigeria"},
      {"code": "(+1)", "country": "U.S.A"},
      {"code": "(+44)", "country": "U.K"},
    ];
    showDropdownMenu(
        context,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: code
                .map((cd) => Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("Selected code: ${cd["code"]}");
                            onSelect(cd["code"]);

                            Navigator.pop(context);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cd["code"],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                cd["country"],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ))
                .toList(),
          ),
        ),
        200);
  }

  @override
  void initState() {
    super.initState();
    email = TextEditingController();
    code = TextEditingController();
    number = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    email!.dispose();
    code!.dispose();
    number!.dispose();
    password!.dispose();
    confirmPassword!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: const BAppBars(
          title: "You're, Almost Done...",
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(children: [
            Expanded(
                child: SingleChildScrollView(
                    child: Column(
              children: [
                const Text(
                  "Please fill in your details to finish creating your account.",
                  textAlign: TextAlign.start,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        ComponentSlideIns(
                          beginOffset: const Offset(-2, 0),
                          duration: const Duration(milliseconds: 1200),
                          child: CustomTextField(
                            validator: (value) {
                              print(value);
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                            hintText: 'johnsmith@gmail.com',
                            inputTitle: "Email",
                            controller: email,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ComponentSlideIns(
                          beginOffset: const Offset(2, 0),
                          duration: const Duration(milliseconds: 1200),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomTextField(
                                        validator: (value) {
                                          print(value);
                                          if (value == null || value.isEmpty) {
                                            return 'Country code';
                                          }
                                          return null;
                                        },
                                        hintText: 'Select',
                                        inputTitle: "Country Code",
                                        controller: code,
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            showCountryCodes((selectedCode) {
                                              code!.text = selectedCode;
                                              print(code!.text);
                                            });
                                          },
                                          child: const Icon(
                                            Icons.arrow_drop_down_sharp,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextField(
                                      validator: (value) {
                                        print(value);
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your number';
                                        }
                                        return null;
                                      },
                                      hintText: 'xxxx-xxxx-xxx',
                                      inputTitle: "Phone Number",
                                      controller: number,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ComponentSlideIns(
                          beginOffset: const Offset(-2, 0),
                          duration: const Duration(milliseconds: 1200),
                          child: CustomTextField(
                            validator: (value) {
                              print(value);
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            hintText: 'xxxxxxxx',
                            inputTitle: "Password",
                            controller: password,
                            keyboardType: TextInputType.number,
                            obscureText: isPasswordObscure,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isPasswordObscure = !isPasswordObscure;
                                });
                              },
                              child: Icon(
                                isPasswordObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: isPasswordObscure
                                    ? Colors.grey
                                    : colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ComponentSlideIns(
                          beginOffset: const Offset(2, 0),
                          duration: const Duration(milliseconds: 1200),
                          child: CustomTextField(
                            validator: (value) {
                              print(value);
                              if (value == null || value.isEmpty) {
                                return 'Please confirm your password';
                              }
                              return null;
                            },
                            hintText: 'xxxxxxxx',
                            inputTitle: "Confirm Password",
                            keyboardType: TextInputType.number,
                            obscureText: isConfirmPasswordObscure,
                            controller: confirmPassword,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isConfirmPasswordObscure =
                                      !isConfirmPasswordObscure;
                                });
                              },
                              child: Icon(
                                isConfirmPasswordObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: isConfirmPasswordObscure
                                    ? Colors.grey
                                    : colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Requirements:",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: Items.map((item) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor: colorScheme.primary,
                                  foregroundColor: Colors.white,
                                  radius: 12,
                                  child: const Icon(
                                    Icons.check,
                                    size: 17,
                                  )),
                              const SizedBox(width: 10),
                              Text(
                                item,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                ComponentSlideIns(
                  beginOffset: const Offset(0, 2),
                  duration: const Duration(milliseconds: 1200),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 5,
                          fixedSize: const Size(350, 60),
                          backgroundColor: colorScheme.primary,
                          foregroundColor: Colors.white,

                          // disabledForegroundColor: Colors.black,
                          // disabledBackgroundColor:
                          //     colorScheme.primary.withOpacity(0.6),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print("Firstname : ${email!.text}");
                          print("DOB : ${code!.text}");
                          print("Lastname : ${number!.text}");
                          print("Nationality : ${password!.text}");
                          print("Gender : ${confirmPassword!.text}");
                          Navigator.pushNamed(context, "verifyNumber");
                        } else {
                          print("Some values are invalid");
                        }
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                        ),
                      )),
                ),
              ],
            )))
          ]),
        ));
  }
}
