import 'package:flutter/material.dart';

class HomeText extends StatelessWidget {
  const HomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body : const Center(
        child: Text(
          'Copyright Santo Evo',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}