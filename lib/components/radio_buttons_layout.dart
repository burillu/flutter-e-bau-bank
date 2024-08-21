import 'package:flutter/material.dart';

class RadioButtonsLayout extends StatelessWidget {
  final void Function() onChanged;
  const RadioButtonsLayout({required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          child: RadioListTile(
              title: Text("M"),
              value: Gender.M,
              groupValue: Gender,
              onChanged: (data) {
                onChanged;
              }),
        ),
        RadioListTile(
            title: Text("F"),
            value: Gender.F,
            groupValue: Gender,
            onChanged: (data) {
              onChanged;
            })
        //Radio(value: Gender.M, groupValue: Gender, onChanged: onChanged1)
      ],
    );
  }
}

enum Gender { M, F }
