import 'package:flutter/material.dart';

import 'package:the_betterlife_app/The-Betterlife-App/Imports.dart';

class BvnVerification extends StatefulWidget {
  const BvnVerification({super.key});

  @override
  State<BvnVerification> createState() => _BvnVerificationState();
}

class _BvnVerificationState extends State<BvnVerification> {
  TextEditingController bvnCt = TextEditingController();
  TextEditingController dobCt = TextEditingController();
  AlertLoading loading = AlertLoading();
  AlertInfo info = AlertInfo();
  var user;
  DateTime? selectedDate;

  void submit(ref) async {
    // Perform validation
    String bvn = bvnCt.text;
    if (bvn == "") {
      info.message = "Field can't be empty";
      info.showAlertDialog(context);
      return;
    }
    // String dob = selectedDate?=null? selectedDate.toString():"";
    loading.showAlertDialog(context);
    final response = await AuthController().verifyBvn({"bvn": bvn});
    loading.closeDialog(context);

    if (response['status'] == 'error') {
      info.message = response['message'];
      info.showAlertDialog(context);
      return;
    }
    final data = ref.watch(signUpProvider);
    data["phone"] = response["phone"];
    ref.read(signUpProvider.notifier).state = data;
    ref.read(goToProvider.notifier).state = "dashboard";
    ref.read(bvnProvider.notifier).state = true;

    Navigator.pushNamed(context, "verifyNumber");
    // Navigator.pushNamedAndRemoveUntil(context, "verifyNumber", (route)=> false);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime.now(),
      initialEntryMode: DatePickerEntryMode.input,
      helpText: "Select a date",
      errorFormatText: "Enter valid date",
      errorInvalidText: "Enter date in a valid range",
      fieldLabelText: "Date of Birth",
      fieldHintText: "Month/Date/Year",
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = DateTime(picked.year, picked.month, picked.day);
        dobCt.text = "${picked.year}/${picked.month}/${picked.day}";
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    bvnCt.dispose();
    dobCt.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
          child: Consumer(builder: (context, ref, _) {
            user = ref.watch(signUpProvider);
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ComponentSlideIns(
                      beginOffset: const Offset(-2, 0),
                      duration: const Duration(milliseconds: 1200),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "BVN Verification",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Icon(
                            Icons.admin_panel_settings,
                            size: 60,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ComponentSlideIns(
                      beginOffset: const Offset(2, 0),
                      duration: const Duration(milliseconds: 1200),
                      child: Text(
                        "Let's verify your BVN, ${user["first_name"]}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ComponentSlideIns(
                      beginOffset: const Offset(-2, 0),
                      duration: const Duration(milliseconds: 1200),
                      child: CustomTextField(
                        hintText: 'xxxxxxxxxxxx',
                        inputTitle: "BVN",
                        controller: bvnCt,
                        keyboardType: TextInputType.number,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            print("being tapped");
                            _selectDate;
                          },
                          child: const Icon(Icons.calendar_month_rounded),
                        ),
                      ),
                    ),
                  ],
                ),
                ComponentSlideIns(
                  beginOffset: const Offset(0, 3),
                  duration: const Duration(milliseconds: 1200),
                  child: Btns().btn(context, "Submit", () {
                    submit(ref);
                  }),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
