import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                FlutterLogo(),
                Text("Curriculum Vitae"),
              ],
            ),
            backgroundColor: Colors.lightGreen[400],
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                cardContainer(),
              ],
            ),
          ),
        ));
  }
}

Widget textContainer(String text, {Color? bgColor}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: bgColor ?? Colors.blue.shade900,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

// 🔹 Function for the outer container
Widget cardContainer() {
  return Container(
    padding: EdgeInsets.only(bottom: 12, left: 12, right: 12),
    alignment: Alignment.topCenter,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.black, width: 2),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        textContainer("Daftar Riwayat Hidup"),
        SizedBox(height: 12,),
        Row(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueAccent, width: 2),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://static.wikitide.net/italianbrainrotwiki/e/e0/Tralalelo_tralala.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 12),
            Text(
              "Not Dika",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NIM",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 6),
                Text(
                  "SLTA",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 6),
                Text(
                  "SLTP",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 6),
                Text(
                  "SD",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 6),
                Text(
                  "MOTTO",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 6),
                SizedBox(
                  height: 18,
                )
              ],
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "23090002",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 6),
                Text(
                  "SMK Negeri 1 Slawi",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 6),
                Text(
                  "SMP Pius Tegal",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 6),
                Text(
                  "SD Pius Tegal",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 6),
                Text(
                  "Malu Bertanya ga usah tanya",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sesat di jalan ga usah pulang",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            ElevatedButton(onPressed: () {}, child: Row(children: [Image.asset("assets/images/github.png", width: 16), Text(" Github")],)),
            ElevatedButton(onPressed: () {}, child: Row(children: [Image.asset("assets/images/twitter.jpg", width: 16), Text(" Twitter")],)),
          ],
        ),
        Row(
          children: [
            ElevatedButton(onPressed: () {}, child: Row(children: [Image.asset("assets/images/facebook.webp", width: 16), Text(" Facebook")],)),
            ElevatedButton(onPressed: () {}, child: Row(children: [Image.asset("assets/images/instagram.png", width: 16), Text(" Instagram")],)),
          ],
        )
      ],
    ),
  );
}
