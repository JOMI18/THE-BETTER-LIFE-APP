import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Function()? onTap;
  final bool readOnly;
  final String inputTitle;
  final TextInputType? keyboardType;

  CustomTextField(
      {super.key,
      required this.hintText,
      this.obscureText = false,
      this.readOnly = false,
      this.suffixIcon,
      this.onChanged,
      this.controller,
      this.validator,
      this.onTap,
      this.keyboardType,
      this.contentPadding = const EdgeInsets.all(10),
      required this.inputTitle});

  bool touched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputTitle,
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          onTap: onTap,
          readOnly: readOnly,

          // validator: (value) {
          //   if (touched && widget.validator != null) {
          //     return widget.validator!(value);
          //   }
          //   return null;
          // },
          // onTap: () {
          //   setState(() {
          //     touched = true;
          //   });

          //   if (widget.onTap != null) {
          //     widget.onTap!();
          //   }
          // },
          // onChanged: (value) {
          //   setState(() {
          //     touched = value.isNotEmpty;
          //   });

          //   if (widget.onChanged != null) {
          //     widget.onChanged!("");
          //   }
          // },

          decoration: InputDecoration(
            contentPadding: contentPadding,
            filled: true,
            fillColor: const Color.fromARGB(121, 221, 221, 221),
            border: const OutlineInputBorder(),
            hintText: hintText,
            suffixIcon: suffixIcon,
            labelStyle: const TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(190, 17, 25, 29),
            ),
            hintStyle: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(222, 115, 115, 115),
            ),
          ),
          style: const TextStyle(fontSize: 18, letterSpacing: 1.2),
        ),
      ],
    );
  }
}
