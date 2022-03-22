import 'package:flutter/material.dart';
import 'package:flutter_app/googlefontpage.dart';

class NavigattorSecoundPage extends StatelessWidget {
  const NavigattorSecoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to NavigatorFristPage")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GoogleFontsPage()));
                },
                child: Text("Go to GoogleFontPage")),
          )
        ],
      )),
    );
  }
}
