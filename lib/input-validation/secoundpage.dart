import 'package:flutter/material.dart';
import 'package:flutter_app/navigator-route/navigatorfristpage.dart';

class ScoundPage extends StatelessWidget {
  const ScoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Secound Page"),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NavigatorFristPage()));
              },
              child: Text("Go to Navigation Page")),
        ));
  }
}
