import 'package:flutter/material.dart';

class HomeBSM extends StatefulWidget {
  @override
  State<HomeBSM> createState() => _HomeState();
}

class _HomeState extends State<HomeBSM> { 
  int _data = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Basic State Management', style: TextStyle(color: Colors.white),) , backgroundColor: Colors.black,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$_data', style: const TextStyle(fontSize: 40)),
              ElevatedButton(
                 onPressed: () {
                  _data--;
                  setState(() {});
                  print(_data);
                }, 
                child: const Text('MIN -1')
                )
            ],
          ),
        ),
      );
  }
}
