import "package:the_betterlife_app/The-Betterlife-App/Imports.dart";
import 'package:flutter/material.dart';

class BSignIn extends StatefulWidget {
  BSignIn({super.key});

  @override
  State<BSignIn> createState() => _BSignInState();
}

class _BSignInState extends State<BSignIn> {
  // void setLogin() async {
  //   final SharedPreferences prefer = await SharedPreferences.getInstance();
  //   prefer.setBool("loggedIn", true);
  // }

  late TextEditingController? code;
  late TextEditingController? numEmail;
  late TextEditingController? password;

  bool isPasswordObscure = true;
  bool isConfirmPasswordObscure = true;

  // void showCountryCodes(Function(String) onSelect) {
  //   final List code = [
  //     {"code": "(+234)", "country": "Nigeria"},
  //     {"code": "(+1)", "country": "U.S.A"},
  //     {"code": "(+44)", "country": "U.K"},
  //   ];
  //   showDropdownMenu(
  //       context,
  //       Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: code
  //               .map((cd) => Column(
  //                     children: [
  //                       GestureDetector(
  //                         onTap: () {
  //                           print("Selected code: ${cd["code"]}");
  //                           onSelect(cd["code"]);
  //                           Navigator.pop(context);
  //                         },
  //                         child: Row(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               cd["code"],
  //                               style: TextStyle(
  //                                   fontSize: 20, fontWeight: FontWeight.bold),
  //                             ),
  //                             SizedBox(
  //                               width: 4,
  //                             ),
  //                             Text(
  //                               cd["country"],
  //                               style: TextStyle(
  //                                   fontSize: 20, fontWeight: FontWeight.bold),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                       SizedBox(height: 15),
  //                     ],
  //                   ))
  //               .toList(),
  //         ),
  //       ),
  //       200);
  // }

  void submit(ref) async {
    AlertInfo alertInfo = AlertInfo();
    AlertLoading loading = AlertLoading();
    Utilities utilities = Utilities();
    Map info = await utilities.devicePlatform;
    Map data = ref.watch(signUpProvider.notifier);
    // String? goTo = ref.read(goToProvider.notifier).state = "dashboard";
    ref.read(bvnProvider.notifier).state = false;

    if (numEmail!.text == "" || password!.text == "") {
      alertInfo.message = "Fill all required fields";
      alertInfo.showAlertDialog(context);
      return;
    }
    loading.showAlertDialog(context);
    final response = await AuthController().login({
      "email_or_phone": numEmail!.text,
      "password": password!.text,
      "device_model": info["model"],
      "device_id": info["id"],
    });
    loading.closeDialog(context);

    if (response['status'] == "error" && response["otp" == false]) {
      alertInfo.message = response['message'];
      alertInfo.showAlertDialog(context);
      return;
    } else if (response['status'] == "error" && response["otp" == true]) {
      data["phone"] = response["user"]["phone"];
      data["email"] = response["user"]["email"];
      ref.refresh(userProvider.notifier).state =
          UserModel.fromJson(response["user"]);
      ref.read(signUpProvider.notifier).state = data;
      ref.read(reasonProvider.notifier).state = response["message"];
      Navigator.pushNamed(context, "verifyNumber");
      return;
    }

    print(response);
  }

  @override
  void initState() {
    super.initState();
    code = TextEditingController();
    numEmail = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    code!.dispose();
    numEmail!.dispose();
    password!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: const WelcomeAppBar(),
      bottomNavigationBar: ComponentSlideIns(
        beginOffset: const Offset(0, 2),
        duration: const Duration(milliseconds: 1200),
        child: BottomAppBar(
            surfaceTintColor: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  " Don't have a Betterlife account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      SlideAnimation(
                        page: ActiveSignUp(),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.primary),
                  ),
                ),
              ],
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
        child: Consumer(
          builder: (context, ref, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ComponentSlideIns(
                      beginOffset: const Offset(2, 0),
                      duration: const Duration(milliseconds: 1200),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Welcome to Betterlife",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Complete your details below to continue your Betterlife account",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade800,
                                  ),
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
                      child: Row(
                        children: [
                          // Expanded(
                          //     flex: 3,
                          //     child: Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         CustomTextField(
                          //           validator: (value) {
                          //             print(value);
                          //             if (value == null || value.isEmpty) {
                          //               return 'Please enter your code';
                          //             }
                          //             return null;
                          //           },
                          //           hintText: 'Select',
                          //           inputTitle: "Country Code",
                          //           controller: code,
                          //           suffixIcon: GestureDetector(
                          //             onTap: () {
                          //               showCountryCodes((selectedCode) {
                          //                 code!.text = selectedCode;
                          //                 print(code!.text);
                          //               });
                          //             },
                          //             child: const Icon(
                          //               Icons.arrow_drop_down_sharp,
                          //               size: 30,
                          //             ),
                          //           ),
                          //         ),
                          //       ],
                          //     )),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ComponentSlideIns(
                                  beginOffset: const Offset(2, 0),
                                  duration: const Duration(milliseconds: 1200),
                                  child: CustomTextField(
                                    hintText: 'number/email',
                                    inputTitle: "Phone number or Email",
                                    controller: numEmail,
                                  ),
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
                        hintText: 'xxxxxxxxx',
                        inputTitle: "Password",
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
                        controller: password,
                      ),
                    ),
                  ],
                ),
                Btns().btn(context, "Submit", () {
                  submit(ref);
                })
              ],
            );
          },
        ),
      ),
    );
  }
}
