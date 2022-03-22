import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsPage extends StatelessWidget {
  const GoogleFontsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text(
              "Hello I'm Alex',I read in Diploma in Computer Science and Engineering I'm a Flutter Developer",
              style: GoogleFonts.hurricane()),
          SizedBox(
            height: 20,
          ),
          Text(
            "Lorem ipsum doller sit amet",
            style: TextStyle(fontFamily: "Bungee"),
          )
        ],
      )),
    );
  }
}
