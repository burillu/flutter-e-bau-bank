import 'package:flutter/material.dart';

class SectionInput extends StatelessWidget {
  final String title;
  final Widget inputFieldCustom;

  const SectionInput({required this.title, required this.inputFieldCustom});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          inputFieldCustom,
        ],
      ),
    );
  }
}
