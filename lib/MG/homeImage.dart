import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("CAR IMAGE",style: TextStyle(color: Colors.white, 
          fontWeight: FontWeight.bold, 
          fontFamily:'Poppins'),),
        ),
        body: SingleChildScrollView(
            child: Column(
            children: [
              Image.asset('assets/redbull.webp'),
              Image.asset('assets/haas.webp'),
              Image.asset('assets/mercedes.webp'),
              Image.asset('assets/alpine.webp'),
              Image.asset('assets/fewawi.webp'),
              Image.asset('assets/arm.webp'),
              Image.asset('assets/mclaren.webp'),
              Image.asset('assets/bwt.webp'),
            ],
            ),
        )
      ),
    );
  }
}