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
      home: const MyHomePage(title: 'Pertemuan 1'),
    );
  }
}

class Mahasiswa {
  String nama;
  String nim;
  String jurusan;

  Mahasiswa(this.nama, this.nim, this.jurusan);

  String tampilData() {
    return
    'Data Mahasiswa\n'
    'Nama: $nama\n'
    'NIM: $nim\n'
    'Jurusan: $jurusan';
  }

  void ubahJurusan(String jurusanBaru) {
    jurusan = jurusanBaru;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Mahasiswa> daftarMahasiswa = [];

  void editJurusan(Mahasiswa mahasiswa) {
    TextEditingController controller = TextEditingController(text: mahasiswa.jurusan);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Ubah Jurusan'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(labelText: 'Jurusan Baru'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  mahasiswa.ubahJurusan(controller.text);
                });
                Navigator.pop(context);
              },
              child: Text('Simpan'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Batal'),
            ),
          ],
        );
      },
    );
  }

  void tambahMahasiswa() {
    String nama = '';
    String nim = '';
    String jurusan = '';

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Tambah Mahasiswa'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nama'),
                onChanged: (value) => nama = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'NIM'),
                onChanged: (value) => nim = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Jurusan'),
                onChanged: (value) => jurusan = value,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (nama.isNotEmpty && nim.isNotEmpty && jurusan.isNotEmpty) {
                  setState(() {
                    daftarMahasiswa.add(Mahasiswa(nama, nim, jurusan));
                  });
                  Navigator.pop(context);
                }
              },
              child: Text('Tambah'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Batal'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: daftarMahasiswa.length,
        itemBuilder: (context, index) {
          final mhs = daftarMahasiswa[index];
          return Card(
            elevation: 3,
            margin: EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${mhs.tampilData()}', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 12),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: ElevatedButton.icon(
                      onPressed: () => editJurusan(mhs),
                      icon: Icon(Icons.edit),
                      label: Text('Edit Jurusan'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: tambahMahasiswa,
        child: Icon(Icons.add),
        tooltip: 'Tambah Mahasiswa',
      ),
    );
  }
}