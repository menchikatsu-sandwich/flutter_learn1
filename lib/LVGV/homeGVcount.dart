import 'package:flutter/material.dart';

class HomeGVcount extends StatelessWidget {
  const HomeGVcount({super.key});
 
  @override
  Widget build (BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView Count Santo Evorius Jehu"),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate (9, (index) { 
            return Container( 
              child: Card (
                color: Colors.blue,
              ),
            ); 
          }), 
        ), // GridView.count
      ), // Scaffold
    ); // MaterialApp
  }
}
