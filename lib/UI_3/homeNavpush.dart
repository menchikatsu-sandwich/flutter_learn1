  import 'package:flutter/material.dart';

  class HomeNavpush extends StatelessWidget {
  const HomeNavpush({super.key});
 
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(title: const Text('Santo Evorius Jehu Page', style: TextStyle(color: Colors.white),), 
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          automaticallyImplyLeading: false, // hilangkan tombol back
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>Page2())
                );
              }, 
              child: const Text('Menuju tak terbatas dan melampauinya -> 2'),  
            ),
          ),
        );
    }
  }

  class Page2 extends StatelessWidget {
  const Page2({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: const Text('Hi, Sans. Welkom to page 2.'),),
        body: Center(
                    child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>HomeNavpush())
                );
              }, 
              child: const Text('Mulih'),  
            ),
        ),
      );
    }
  }
