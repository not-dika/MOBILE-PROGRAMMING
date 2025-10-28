import 'package:flutter/material.dart';
import 'package:pertemuan_4/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pertemuan 5")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(nilai.toString(), style: TextStyle(fontSize: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilai--;
                      });
                    },
                    child: const Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilai++;
                      });
                    },
                    child: const Icon(Icons.add)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Icon(Icons.warning),
                      content: Text("Apakah anda yakin"),
                      actions: [
                        TextButton(onPressed: () {}, child: Text("Tidak")),
                        ElevatedButton(onPressed: () {}, child: Text("Ya")),
                      ],
                    ),
                  );
                },
                child: Text("Dialog")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              snackBar("Berhasil", Colors.green);
            }, child: Text("Snackbar")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => profilePage(),));
            }, child: Text("Ke Profile"))
          ],
        ),
      ),
    );
  }
  
  snackBar(String text, MaterialColor backgroundColor) {
    return ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(text),
                  backgroundColor: backgroundColor,
                  action: SnackBarAction(label: "Batal", textColor: Colors.white, onPressed: (){}),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  )
              );
  }
}
