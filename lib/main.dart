import 'package:flutter/material.dart';
import 'package:flutter_application_1/Project_UTS/home_mahasiswa.dart';
// import 'package:flutter_application_1/LVGV/homeGV.dart';
// import 'package:flutter_application_1/LVGV/homeLVtext.dart';
// import 'package:flutter_application_1/UI_3/homeBSM.dart';
// import 'package:flutter_application_1/UI_3/homeNavpush.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeMahasiswa(),
    );
  }
}



