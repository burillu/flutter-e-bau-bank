import 'package:e_bau_bank/components/input_field.dart';
import 'package:flutter/material.dart';

class InputLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputField(hintText: "nome e Cognome"),
        SizedBox(
          height: 10,
        ),
        InputField(hintText: "Eta'"),
      ],
    );
  }
}
