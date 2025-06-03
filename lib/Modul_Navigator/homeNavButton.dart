import 'package:flutter/material.dart';

class HomeNavButton extends StatefulWidget {
  @override
  _HomeNavButtonState createState() => _HomeNavButtonState();
}

class _HomeNavButtonState extends State<HomeNavButton> {
  int _selectedNavbar = 0;
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav Button sans"),
      ),
      body: Center(
        child: Text("Tab Index yang aktif : $_selectedNavbar",
            style: TextStyle(fontSize: 16)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: ('Pesanan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: ('Inbox'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Akun'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

