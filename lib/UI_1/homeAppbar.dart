import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
      leading: const Icon(Icons.menu),
      titleSpacing: 0,
      title: const Text('Home'),
      centerTitle: true,
      actions: const [
        Icon(Icons.notifications),
        Icon(Icons.settings),
      ],
      ),
      body: const Center(
        child: Icon(
          Icons.face,
          size: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}