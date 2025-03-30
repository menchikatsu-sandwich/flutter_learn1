import 'package:flutter/material.dart';
// import 'package:flutter_application_1/homeRow.dart';
import 'package:flutter_application_1/homeStack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeStack(),
    );
  }
}



