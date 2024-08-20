import 'package:e_bau_bank/components/input_field.dart';
import 'package:flutter/material.dart';

class SectionInput extends StatelessWidget {
  final String title;
  final String label;

  const SectionInput({required this.title, required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          InputField(label: label),
          SizedBox(
            height: 10,
          ),
          InputField(label: "Eta'")
        ],
      ),
    );
  }
}
