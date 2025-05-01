import 'package:flutter/material.dart';

class HomeSinglescroll extends StatelessWidget {
  const HomeSinglescroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body : Center (
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(height: 100, color: Colors.red, margin: EdgeInsets.fromLTRB(0, 20, 0, 0),),
              const SizedBox(height: 20),
              Container(height: 100, color: Colors.orange),
              const SizedBox(height: 20),
              Container(height: 100, color: Colors.yellow),
              const SizedBox(height: 20),
              Container(height: 100, color: Colors.green),
              const SizedBox(height: 20),
              Container(height: 100, color: Colors.blue),
              const SizedBox(height: 20),
              Container(height: 100, color: Colors.indigo),
              const SizedBox(height: 20),
              Container(height: 100, color: Colors.purple),
              const SizedBox(height: 20),
            ],
          )
      )
    );
  }
}