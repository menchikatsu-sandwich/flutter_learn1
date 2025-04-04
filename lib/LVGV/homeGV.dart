import 'package:flutter/material.dart';

class HomeGV extends StatelessWidget {
  const HomeGV({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GridViewScreen(),
    );
  }
}

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Grid View Flutter Santo Evorius Jehu',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Center(
            child: FlutterLogo(size: 100.0),
          );
        },
      ),
    );
  }
}
