import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:the_betterlife_app/The-Betterlife-App/Imports.dart';

class ActiveSignUp extends StatefulWidget {
  ActiveSignUp({super.key});

  @override
  State<ActiveSignUp> createState() => _ActiveSignUpState();
}

class _ActiveSignUpState extends State<ActiveSignUp> {
  late TextEditingController? firstNameCt;
  late TextEditingController? lastNameCt;
  late TextEditingController? dobCt;
  late TextEditingController? genderCt;
  late TextEditingController? countryCt;

  final formKey = GlobalKey<FormState>();

  void showGenderTab(Function(String) onSelect) {
    final List<Map<String, dynamic>> gender = [
      {
        "title": "Male",
        "icon": Icons.boy_rounded,
      },
      {"title": "Female", "icon": Icons.girl_rounded}
    ];
    showDropdownMenu(
        context,
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: gender
                  .map(
                    (gen) => GestureDetector(
                      onTap: () {
                        print("Selected gender: ${gen["title"]}");
                        // Update the text field value

                        onSelect(gen["title"]);

                        Navigator.pop(context);
                      },
                      child: Column(
                        children: [
                          Icon(
                            gen["icon"],
                            size: 50,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            gen["title"],
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList()),
        ),
        140);
  }

  void showNationalityTab(Function(String) onSelect) {
    final List country = [
      {
        "title": "Nigeria",
        "img":
            "https://t3.ftcdn.net/jpg/00/51/36/32/360_F_51363279_SK0fXpY7zrFy88oxGbkAY2vuEVOiGWjY.webp"
      },
      {
        "title": "U.S.A",
        "img":
            "https://cdn.britannica.com/33/4833-004-828A9A84/Flag-United-States-of-America.jpg",
      },
      {
        "title": "U.K",
        "img":
            "https://c4.wallpaperflare.com/wallpaper/684/148/21/flag-uk-union-jack-wallpaper-preview.jpg"
      },
    ];
    showDropdownMenu(
        context,
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              children: country
                  .map(
                    (country) => Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            onSelect(country["title"]);

                            Navigator.pop(context);
                            print("Selected Country ${country["title"]}");
                          },
                          child: Row(
                            children: [
                              Image.network(
                                country["img"],
                                height: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                country["title"],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  )
                  .toList()),
        ),
        250);
  }

  @override
  void initState() {
    super.initState();
    firstNameCt = TextEditingController();
    lastNameCt = TextEditingController();
    dobCt = TextEditingController();
    genderCt = TextEditingController();
    countryCt = TextEditingController();

    // formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    firstNameCt!.dispose();
    lastNameCt!.dispose();
    dobCt!.dispose();
    genderCt!.dispose();
    countryCt!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: const BAppBars(
        title: "Hello, Create An Account",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const TopSection(),
                    const SizedBox(
                      height: 15,
                    ),
                    Form(
                        key: formKey,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ComponentSlideIns(
                              beginOffset: const Offset(2, 0),
                              duration: const Duration(milliseconds: 1200),
                              child: CustomTextField(
                                validator: (value) {
                                  // print(value);
                                  if (value == null || value.isEmpty) {
                                    // print("Please enter your first name");
                                    return 'Please enter your first name';
                                  }
                                  return null;
                                },
                                hintText: 'John',
                                inputTitle: "First Name",
                                controller: firstNameCt,
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
                                  // print(value);
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your last name';
                                  }
                                  return null;
                                },
                                hintText: 'Smith',
                                inputTitle: "Surname / Last Name",
                                controller: lastNameCt,

                                // controller: firstName,
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
                                  // print(value);
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your date of birth ';
                                  }
                                  return null;
                                },
                                hintText: 'mm/dd/yyyy',
                                inputTitle: "Date of Birth",
                                controller: dobCt,

                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    showCalendarPicker(context, (selectedDate) {
                                      dobCt!.text = DateFormat('MM/dd/yyyy')
                                          .format(selectedDate);
                                    });
                                  },
                                  child: const Icon(
                                    Icons.calendar_today,
                                  ),
                                ),

                                // controller: firstName,
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
                                  // print(value);
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your gender';
                                  }
                                  return null;
                                },
                                hintText: 'Gender',
                                inputTitle: "Gender",
                                controller: genderCt,
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    showGenderTab((selectedGender) {
                                      genderCt!.text = selectedGender;
                                      print(genderCt!.text);
                                    });
                                  },
                                  child: const Icon(
                                    Icons.arrow_drop_down_sharp,
                                    size: 30,
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
                                inputTitle: "Nationality",
                                hintText: 'Select',
                                controller: countryCt,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your nationality ";
                                  }
                                },
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    showNationalityTab((selectedCountry) {
                                      countryCt!.text = selectedCountry;
                                      print(countryCt!.text);
                                    });
                                  },
                                  child: const Icon(
                                    Icons.arrow_drop_down_sharp,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ComponentSlideIns(
              beginOffset: const Offset(0, 2),
              duration: const Duration(milliseconds: 1200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade900,
                        ),
                        text: "By continuing, you accept our ",
                        children: [
                          TextSpan(
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.primary),
                              text: "Terms of Service"),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Handle tap here
                                  print('Text tapped!');
                                },
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade900,
                              ),
                              text: " and "),
                          TextSpan(
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.primary),
                              text: "Privacy Policy."),
                        ]),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
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

                    // onPressed: null,

                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // print(formKey.currentState!.validate());
                        print("All fields are valid");
                        print("First name : ${firstNameCt!.text}");
                        print("Last name : ${lastNameCt!.text}");
                        print("DOB : ${dobCt!.text}");
                        print("Nationality : ${countryCt!.text}");
                        print("Gender : ${genderCt!.text}");
                        Navigator.of(context).push(
                            SlideAnimation(page: BsignUpPasswordScreen()));
                      } else {
                        print("Some fields are invalid");
                      }
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade900),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "logIn");
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: colorScheme.primary),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
