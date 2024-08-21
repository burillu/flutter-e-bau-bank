import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;

  const InputField(
      {required this.hintText, this.textInputType = TextInputType.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(6)),
        child: TextField(
          keyboardType: textInputType,
          //style: TextStyle(backgroundColor: Colors.blue),
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            border: InputBorder.none,
          ),
        ));
  }
}
