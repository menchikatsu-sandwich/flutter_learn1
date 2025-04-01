import 'package:flutter/material.dart';

class HomeBSM extends StatefulWidget {
  const HomeBSM({super.key});

  @override
  State<HomeBSM> createState() => _HomeState();
}

class _HomeState extends State<HomeBSM> {
  int _data = 50;
  final List<String> _log = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Basic State Management',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.history, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogPage(log: _log)),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_data', style: const TextStyle(fontSize: 40)),
            ElevatedButton(
              onPressed: () {
                int before = _data; // simpan nilai before
                _data--;
                _log.add('-1 dari: $before jadi: $_data'); // tambah log
                setState(() {});
                print(_data);
              },
              child: const Text('MIN -1'),
            ),
            ElevatedButton(
              onPressed: () {
                int before = _data; // simpan nilai before
                _data++;
                _log.add('+1 dari: $before jadi: $_data'); // tambah log
                setState(() {});
                print(_data);
              },
              child: const Text('PLUS +1'),
            ),
          ],
        ),
      ),
    );
  }
}

class LogPage extends StatelessWidget {
  final List<String> log;

  const LogPage({super.key, required this.log});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History Log', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: log.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(log[log.length - 1 - index])); // ubah urutan log
        },
      ),
    );
  }
}
