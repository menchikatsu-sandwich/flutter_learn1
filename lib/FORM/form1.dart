// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

class Form1 extends StatefulWidget {
  @override
  _FormStateLearn createState() => _FormStateLearn();
}

class _FormStateLearn extends State<Form1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Santo Evorius Jehu"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Contoh: Santo Evorius",
                  labelText: "Full Name",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name must be filled!';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

