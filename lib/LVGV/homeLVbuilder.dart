import 'package:flutter/material.dart';

class HomeLVbuilder extends StatefulWidget {
  @override
  _HomeLVbuilderState createState() => _HomeLVbuilderState();
}

class _HomeLVbuilderState extends State<HomeLVbuilder> {
  String selectedLanguage = 'JP';

  final Map<String, List<String>> days = {
    'ID': [
      "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"
    ],
    'EN': [
      "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"
    ],
    'JP': [
      "Getsuyōbi (月曜日)", "Kayōbi (火曜日)", "Suiyōbi (水曜日)", "Mokuyōbi (木曜日)", "Kin'yōbi (金曜日)", "Doyōbi (土曜日)", "Nichiyōbi (日曜日)"
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "ListView Builder Hari ($selectedLanguage) Santo Evorius Jehu",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildLanguageButton('ID'),
                _buildLanguageButton('EN'),
                _buildLanguageButton('JP'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: days[selectedLanguage]?.length ?? 0,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        days[selectedLanguage]![index],
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageButton(String language) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedLanguage = language;
          });
        },
        child: Text(language),
      ),
    );
  }
}