import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DemoGet extends StatefulWidget {
  const DemoGet({super.key});

  @override
  State<DemoGet> createState() => _DemoGetState();
}

class _DemoGetState extends State<DemoGet> {
  String nama = "...";
  String email = "...";
  String telpon = "...";
  String alamat = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo GET"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Nama: $nama"),
            SizedBox(height: 8,),
            Text("Email: $email"),
            SizedBox(height: 8,),
            Text("Telpon: $telpon"),
            SizedBox(height: 8,),
            Text("Alamat: $alamat"),
            SizedBox(height: 8,),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () async {
              var response = await http.get(Uri.parse("http://jsonplaceholder.typicode.com/users/1"));
              Map<String, dynamic> data = jsonDecode(response.body);
              Map<String, dynamic> addr = data['address'];
              setState(() {
                nama = data['name'];
                email = data['email'];
                telpon = data['phone'];
                alamat = addr['street'] + " st. " + addr['suite'] + ", " + addr['city'] + "city " + addr['zipcode'];
              });
            }, child: Text("GET"))
          ],
        ),
      ),
    );
  }
}