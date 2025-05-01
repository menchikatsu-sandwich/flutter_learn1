import 'package:flutter/material.dart';

class HomeElevatedButton extends StatelessWidget {
  const HomeElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            print('Halo, Santo Evo!');
          },
          onLongPress: () {
            print('2315354054');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
              Colors.red,
            foregroundColor: 
              Colors.yellow,
              // padding: EdgeInsets.fromLTRB(30, 16, 30, 16),
          ),
          child: const Text('Klik disini mas!'),
        ),
      )
    );
  }
}
