import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JokesApiPage extends StatelessWidget {
  final String apiUrl = "https://candaan-api.vercel.app/api/text/random?count=10";

  Future<List<dynamic>> _fetchJokes() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      // Hasil: { data: ["joke1", "joke2", ...] }
      final body = json.decode(response.body);
      return body['data'];
    } else {
      throw Exception('Gagal memuat jokes (status ${response.statusCode})');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jokes Indonesia - Santo Evorius Jehu')),
      body: FutureBuilder<List<dynamic>>(
        future: _fetchJokes(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              padding: EdgeInsets.all(12),
              itemCount: snapshot.data!.length,
              separatorBuilder: (_, __) => Divider(),
              itemBuilder: (_, idx) {
                final joke = snapshot.data![idx] as String;
                return Text(
                  "• $joke",
                  style: TextStyle(fontSize: 16),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
