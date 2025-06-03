import 'package:flutter/material.dart';
// import 'package:flutter_application_1/FORM/form2.dart';
import 'package:flutter_application_1/Modul_Navigator/homeNavButton.dart';
// import 'package:flutter_application_1/Modul_Navigator/homeNavButton.dart';
// import 'package:flutter_application_1/ModulPegawai/ui/list_pegawai.dart';
// import 'package:flutter_application_1/Modul_Navigator/homeNavDrawer.dart';
// import 'package:flutter_application_1/ModulSQL/list_kontak.dart';
// import 'package:flutter_application_1/FORM/form2.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeNavButton(),
    );
  }
}



