import 'package:flutter/material.dart';

class HomeBSMstlss extends StatelessWidget {
  const HomeBSMstlss({super.key});

  @override
  Widget build(BuildContext context) {
    int data = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic State Management'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$data', style: const TextStyle(fontSize: 40)),
            ElevatedButton(
              onPressed: () {
                data++;
                print(data);
              },
              child: const Text('PLUS +1'),
            ),
          ],
        ),
      ),
    );
  }
}
