import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CatPage extends StatelessWidget {
  final String apiUrl = "https://cataas.com/api/cats?limit=9";

  Future<List<dynamic>> fetchCats() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Gagal mengambil data kucing");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Galeri Kucing - Santo")),
      body: FutureBuilder<List<dynamic>>(
        future: fetchCats(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("Tidak ada data kucing."));
          }

          final cats = snapshot.data!;
          return GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: cats.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final cat = cats[index];
              final imageUrl = "https://cataas.com${cat['url']}";
              final tagText = (cat['tags'] as List).join(', ');

              return Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    tagText.isNotEmpty ? tagText : "Tanpa tag",
                    style: TextStyle(fontSize: 11),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
