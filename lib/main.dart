import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/googlefontpage.dart';

import 'package:flutter_app/input-validation/fristpage.dart';
import 'package:flutter_app/navigator-route/navigatorfristpage.dart';
import 'package:flutter_app/navigator-route/navigatorsecoundpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => NavigatorFristPage(),
      //   "/secoundPage": (context)=>NavigattorSecoundPage()
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GoogleFontsPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Center(
          child: Text("Splash Screen"),
        ),
      ),
    );
  }
}
