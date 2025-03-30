import 'package:flutter/material.dart';

class HomeRow extends StatelessWidget {
  const HomeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body : Container(
        color: Colors.yellow,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('SANS', style: TextStyle(fontSize: 30)),
              Text('081329756879', style: TextStyle(fontSize: 30)),
              Text('Laki-K', style: TextStyle(fontSize: 30)),
              Text('20', style: TextStyle(fontSize: 30)),
            ],
          )
      )
    );
  }
}