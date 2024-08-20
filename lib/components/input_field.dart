import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;

  const InputField({required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(6)),
        child: TextField(
          style: TextStyle(backgroundColor: Colors.blue),
          decoration: InputDecoration(
              label: Text(label),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              border: InputBorder.none),
        ));
  }
}
