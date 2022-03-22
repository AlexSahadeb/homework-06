import 'package:flutter/material.dart';
import 'package:flutter_app/navigator-route/navigatorsecoundpage.dart';

class NavigatorFristPage extends StatelessWidget {
  const NavigatorFristPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigattorSecoundPage()));
                },
                child: Text("Go to Secound Page")),
          )
        ],
      )),
    );
  }
}
