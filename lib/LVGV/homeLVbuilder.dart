import 'package:flutter/material.dart';

class HomeLVbuilder extends StatelessWidget {
  final List hari = [
    "Senin (月曜日)",
    "Selasa (火曜日)",
    "Rabu (水曜日)",
    "Kamis (木曜日)",
    "Jumat (金曜日)",
    "Sabtu (土曜日)",
    "Minggu (日曜日)",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, 
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("ListView Builder Hari(JP) Santo Evorius Jehu", style:TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
            child: Text(hari[index], style: TextStyle(fontSize: 30)),
            ),
          );
        },
        itemCount: hari.length,
      ),
    );
  }
}
