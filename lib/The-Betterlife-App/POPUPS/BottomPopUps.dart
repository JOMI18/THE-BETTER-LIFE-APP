import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_betterlife_app/The-Betterlife-App/CUSTOMIZED/BottomSheet.dart';

void showCustomBottomSheet(BuildContext context, Widget child,
    {double? height}) {
  showModalBottomSheet(
    elevation: 4,
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: height,
        child: CustomBottomSheet(child: child),
      );
    },
  );
}

void showHelpPopup(BuildContext context) {
  showCustomBottomSheet(context, const HelpPopup(), height: 200);
}

void showCalendarPicker(BuildContext context) {
  showCustomBottomSheet(context, const CalendarPicker(), height: 300);
}

void showDropdownMenu(BuildContext context, Widget content, double height) {
  showCustomBottomSheet(
    context,
    DropdownMenu(content: content, height: height),
  );
}

class HelpPopup extends StatelessWidget {
  const HelpPopup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 21, vertical: 10),
          child: Text(
            "Having issues logging in?",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
          ),
        ),
        const Divider(
          height: 20,
          color: Color.fromARGB(174, 0, 0, 0),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "forgotPin");
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      foregroundColor: Color.fromARGB(255, 3, 85, 152),
                      child: Icon(
                        Icons.lock,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "I forgot my PIN",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                )
              ],
            ),
          ),
        ),
        const Divider(
          height: 20,
          color: Color(0x77000000),
        ),
        GestureDetector(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      foregroundColor: Color.fromARGB(255, 3, 85, 152),
                      child: Icon(
                        Icons.lock,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Get in touch with us",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CalendarPicker extends StatefulWidget {
  const CalendarPicker({
    super.key,
  });

  @override
  State<CalendarPicker> createState() => _CalendarPickerState();
}

class _CalendarPickerState extends State<CalendarPicker> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return CupertinoDatePicker(
      mode: CupertinoDatePickerMode.dateAndTime,
      initialDateTime: selectedDate,
      onDateTimeChanged: (DateTime newDateTime) {
        setState(() {
          selectedDate = newDateTime;
        });
      },
    );
  }
}

class DropdownMenu extends StatelessWidget {
  final Widget content;
  final double height;
  const DropdownMenu({
    super.key,
    required this.content,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          content,
        ],
      ),
    );
  }
}
