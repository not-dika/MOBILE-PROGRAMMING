import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pertemuan 6"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/demoget");
              }, child: Text("GET Request"))
          ],
        ),
      ),
    );
  }
}