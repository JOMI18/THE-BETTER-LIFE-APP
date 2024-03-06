import 'package:flutter/material.dart';

class PasswordInputBox extends StatelessWidget {
  PasswordInputBox(
      {super.key, required this.textController, required this.focusnode});

  late final TextEditingController textController;
  late final FocusNode focusnode;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      child: TextFormField(
        controller: textController,
        focusNode: focusnode,
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10, // Adjust vertical padding as needed
            horizontal: 10, // Adjust horizontal padding as needed
          ),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          fillColor: Colors.grey.shade200,
          counter: const SizedBox.shrink(), // removes the counter
        ),
      ),
    );
  }
}
