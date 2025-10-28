import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const profilePage());
}

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile page"),),
      body: Center(
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}