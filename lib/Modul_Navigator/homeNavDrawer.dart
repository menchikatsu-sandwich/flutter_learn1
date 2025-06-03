import 'package:flutter/material.dart';
import 'package:flutter_application_1/Modul_Navigator/DrawerSetting/drawer_widget.dart';

class HomeNavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() =>
      _NavDrawerState();
}

class _NavDrawerState extends State<HomeNavDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.account_circle),
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
        title: Text("Nav Drawer sans"),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.account_box, color: Colors.white),
            onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      endDrawer: DrawerWidget(),
      body: Center(
        child: Text(
          'Belajar Navigation Drawer di Flutter',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

