import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class api1 extends StatelessWidget {
  final String apiUrl = "https://reqres.in/api/users?page=2";
  Future<List<dynamic>> _fecthData() async {
    var result = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'x-api-key': 'reqres-free-v1',
      },
    );
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar API')),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        snapshot.data[index]['avatar'],
                      ),
                    ),
                    title: Text(
                      snapshot.data[index]['first_name'] +
                          " " +
                          snapshot.data[index]['last_name'],
                    ),
                    subtitle: Text(snapshot.data[index]['email']),
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
