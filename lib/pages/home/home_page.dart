import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          header(),
          title(),
          main(),
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
Widget main() => Positioned(
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
        child: SectionInput(title: "Dati Anagrafici"),
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

class SectionInput extends StatelessWidget {
  final String title;

  const SectionInput({required this.title});
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
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(6)),
            child: TextField(
              style: TextStyle(backgroundColor: Colors.blue),
              decoration: InputDecoration(
                  label: Text("Nome e Cognome"),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}

class BoxSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.black26,
    );
  }
}
