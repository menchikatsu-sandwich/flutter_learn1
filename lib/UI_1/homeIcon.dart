import 'package:flutter/material.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body : const Center(
        child: Icon(
          Icons.face,
          size: 100,
          color: Colors.red,
        ), 
      ),
    );
  }
}