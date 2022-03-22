import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/input-validation/secoundpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _fromKey = GlobalKey<FormState>();

  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: _fromKey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Name",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Plzzz enter your Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Email",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Plzzz enter your Email";
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Plzzz enter your Number";
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Address",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Plzzz enter your Address";
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Age",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Plzzz enter your Age";
                          } else {
                            return null;
                          }
                        },
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_fromKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ScoundPage()));
                            }
                          },
                          child: Text("Log In"))
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  label: Text("email"),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(_textEditingController.text);
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      )),
    );
  }
}
