import 'package:flutter/material.dart';

class HomeMahasiswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
      backgroundColor: Colors.blue,
        title: Text("Profil Mahasiswa"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text("Santo Evorius Jehu", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("NIM: 2315354054"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => JadwalPage())),
              child: Text("Lihat Jadwal Kuliah"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => GaleriPage())),
              child: Text("Lihat Galeri"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SKSPage())),
              child: Text("Hitung SKS"),
            ),
          ],
        ),
      ),
    );
  }
}

class JadwalPage extends StatelessWidget {
  final List<String> jadwal = [
    "Senin - Digital Image Processing",
    "Selasa - Kecerdasan Buatan",
    "Rabu - Pemrograman Perangkat Bergerak",
    "Kamis - Digital Image Processing",
    "Jumat - Sistem Informasi Pariwisata",
    "Sabtu - Pemrograman Perangkat Bergerak",
    "Minggu - Kecerdasan Buatan",
  ];

  final List<Color> warnaHari = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "ListView Builder Hari(JP) Santo Evorius Jehu",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(jadwal.length, (index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              padding: EdgeInsets.all(15),
              color: warnaHari[index],
              child: Center(
                child: Text(
                  jadwal[index],
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class GaleriPage extends StatelessWidget {
  final List<String> gambar = [
    'assets/sansgit.jpg',
    'assets/sanssat.jpg',
    'assets/King-profile.png',
    'assets/sans-profile.png',
    'assets/aditt-profile.png',
    'assets/King-profile.png',
    'assets/dwikz-profile.png',
    'assets/bob-profile.png',
    'assets/King-profile.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Galeri Aktivitas")),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          gambar.length,
          (index) => Card(
            child: Image.asset(
              gambar[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class SKSPage extends StatefulWidget {
  @override
  _SKSPageState createState() => _SKSPageState();
}

class _SKSPageState extends State<SKSPage> {
  int sks = 0;
  final List<Color> warnaPelangi = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];

  void tambahSKS() {
    setState(() {
      if (sks < 21) sks += 3;
    });
  }

  void kurangSKS() {
    setState(() {
      if (sks >= 1) sks -= 1;
    });
  }

  void resetSKS() {
    setState(() {
      sks = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int jumlahWarna = (sks > 0) ? sks.clamp(0, 21) : 0;

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Hitung SKS")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: List.generate(jumlahWarna, (index) {
                final double inset = index * 10.0;
                final color = warnaPelangi[index % warnaPelangi.length];
                return Container(
                  width: 200 - inset,
                  height: 200 - inset,
                  color: color,
                );
              }),
            ),
            SizedBox(height: 20),
            Text("Total SKS: $sks", style: TextStyle(fontSize: 32)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: tambahSKS,
              child: Text("Tambah 3 SKS"),
            ),
            ElevatedButton(
              onPressed: kurangSKS,
              child: Text("Kurangi 1 SKS"),
            ),
            TextButton(
              onPressed: resetSKS,
              child: Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}