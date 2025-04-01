import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 500,
            margin: const EdgeInsets.fromLTRB(50, 150, 30, 16),
            padding: const EdgeInsets.fromLTRB(30, 16, 30, 16),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Copyright Santo Evo',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            height: 100,
            width: 500,
            margin: const EdgeInsets.fromLTRB(50, 150, 30, 16),
            padding: const EdgeInsets.fromLTRB(30, 16, 30, 16),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Copyright Santo Evo',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
