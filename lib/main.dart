import 'package:flutter/material.dart';
import 'package:flutter_application_1/ModulAPI/apicat.dart';
// import 'package:flutter_application_1/ModulAPI/api1.dart';
// import 'package:flutter_application_1/ModulAPI/apijokes.dart';
// import 'package:flutter_application_1/ModulPegawai/ui/list_pegawai.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CatPage(),
    );
  }
}