import 'package:flutter/material.dart';

class HomeNavpush extends StatelessWidget {
  const HomeNavpush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Santo Evorius Jehu Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false, // hilangkan tombol back
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              child: const Text(
                'Menuju tak terbatas dan melampauinya -> Page 2',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
              child: const Text(
                'Menuju tak terbatas dan melampauinya -> About',
              ),
            ),
          ],
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
      appBar: AppBar(title: const Text('Hi, Sans. Welkom to page 2.'),
      automaticallyImplyLeading: false, // hilangkan tombol back
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeNavpush()),
                );
              },
              child: const Text('Mulih'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
              child: const Text(
                'Menuju tak terbatas dan melampauinya -> About',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hi, Sans. Welkom to page About.')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              child: const Text(
                'Menuju tak terbatas dan melampauinya -> Page 2',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
              context,
                );
              },
              child: const Text(
                'Mulih',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
