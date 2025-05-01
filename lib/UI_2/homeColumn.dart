import 'package:flutter/material.dart';

class HomeColumn extends StatelessWidget {
  const HomeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body : Container(
        color: Colors.yellow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Santo Evorius Jehu', style: TextStyle(fontSize: 30)),
              Text('2315354054', style: TextStyle(fontSize: 30)),
              Text('4B TRPL', style: TextStyle(fontSize: 30)),
              Text('17', style: TextStyle(fontSize: 30)),
              Container(color: Colors.red, height: 70, width: 180),
            ],
          )
      )
    );
  }
}