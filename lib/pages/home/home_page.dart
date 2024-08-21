import 'package:e_bau_bank/components/input_field.dart';
import 'package:e_bau_bank/components/radio_buttons_layout.dart';
import 'package:e_bau_bank/components/section_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? gender;
  double ral = 0;
  bool termAndConditions = false;
  void radioChange(data) {
    setState(() {
      gender = data;
    });
  }

  void sliderChange(data) {
    setState(() {
      ral = data;
    });
  }

  void switchChange(data) {
    setState(() {
      termAndConditions = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          header(),
          title(),
          main(
              radioChange: radioChange,
              gender: gender,
              ral: ral,
              sliderChange: sliderChange,
              termAndConditions: termAndConditions,
              switchChange: switchChange),
        ]),
      ),
    );
  }
}

Widget header() => Image.network(
      "https://img.freepik.com/premium-photo/dog-looking-money-bills-falling_639249-266.jpg",
      fit: BoxFit.cover,
      height: 400,
      width: double.infinity,
    );
Widget main(
        {radioChange,
        gender,
        ral,
        sliderChange,
        termAndConditions,
        switchChange}) =>
    Positioned(
      top: 230,
      right: 0,
      bottom: 0,
      left: 0,
      child: Container(
        padding: const EdgeInsetsDirectional.all(12),
        //height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SectionInput(
                inputFieldCustom: InputField(
                  hintText: "nome e cognome",
                ),
                title: "Nome",
              ),
              BoxSeparator(),
              SectionInput(
                inputFieldCustom: InputField(
                  hintText: "es: 34",
                  textInputType: TextInputType.number,
                ),
                title: "Eta'",
              ),
              BoxSeparator(),
              SectionInput(
                inputFieldCustom: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RadioListTile(
                        title: Text("M"),
                        value: Gender.M,
                        groupValue: gender,
                        onChanged: (data) {
                          radioChange(data);
                        }),
                    RadioListTile(
                        title: Text("F"),
                        value: Gender.F,
                        groupValue: gender,
                        onChanged: (data) {
                          radioChange(data);
                        })
                    //Radio(value: Gender.M, groupValue: Gender, onChanged: onChanged1)
                  ],
                ),
                title: "Sesso",
              ),
              BoxSeparator(),
              SectionInput(
                title: "ral",
                inputFieldCustom: Slider(
                  value: ral,
                  onChanged: (value) => {sliderChange(value)},
                  min: 0,
                  max: 100000,
                  divisions: 1000,
                  label: "${ral / 1000}k",
                ),
              ),
              BoxSeparator(),
              SectionInput(
                  title: "accetta termini e condizioni",
                  inputFieldCustom: SwitchListTile(
                    onChanged: (value) => {switchChange(value)},
                    value: termAndConditions,
                    title: Text(termAndConditions ? "Accetto" : "Non Accetto"),
                  )),
              BoxSeparator(),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Crea Account"),
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    minimumSize:
                        WidgetStatePropertyAll(Size(double.infinity, 50))),
              ),
              SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      ),
    );

Widget title() => const Positioned(
      top: 150,
      right: 0,
      left: 0,
      child: Text(
        "e-Bau Bank!",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          shadows: <Shadow>[
            Shadow(
              blurRadius: 15.0,
              color: Color.fromARGB(255, 0, 0, 0),
            )
          ],
        ),
      ),
    );

class BoxSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.black26,
    );
  }
}
