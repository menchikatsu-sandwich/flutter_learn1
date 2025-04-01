import 'package:flutter/material.dart';

class HomeStack extends StatelessWidget {
  const HomeStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Stack(
        alignment: Alignment.center,
          children: [
            Container(height: 500,color: Colors.red,),
            Container(height: 450,width: 300,color: Colors.orange,),
            Container(height: 400,width: 250,color: Colors.yellow,),
            Container(height: 350,width: 200,color: Colors.green,),
            Container(height: 300,width: 150,color: Colors.blue,),
            Container(height: 250,width: 100,color: Colors.indigo,),
            Container(height: 200,width: 50,color: Colors.purple,child: Center(child: Text('S\nA\nN\nS', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),),),
          ],
      ),
    );
  }
}
