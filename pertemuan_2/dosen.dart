class Dosen {
  String? _nama;
  String? _nip;
  JenisKelamin? _jk;
  int? _umur;

  // Direct positioned constructor
  Dosen(this._nama, this._nip, this._jk, this._umur);

  // Direct named constructor
  // Dosen({this.nama, this.nip, this.jk, this.umur});

  // Args positioned constructor
  // Dosen(String nama, String nip, JenisKelamin jk, int umur) {
  //   this.nama = nama;
  //   this.nip = nip;
  //   this.jk = jk;
  //   this.umur = umur;
  // }

  // Args constructor
  // Dosen({String? nama, String? nip, JenisKelamin? jk, int? umur}) {
  //   this.nama = nama;
  //   this.nip = nip;
  //   this.jk = jk;
  //   this.umur = umur;
  // }

  void hitungLuasSegitiga(double a, double t) {
    double l = 0.5 * a * t;
    print((_jk == JenisKelamin.L ? 'Pak' : 'Bu') + ' $_nama: Luas segitiga dengan alas $a dan tinggi $t adalah $l');
  }

  void hitungKelilingLingaran(double r) {
    const pi = 3.14;
    double d = r*2;
    double kel = pi * d;
    print((_jk == JenisKelamin.L ? 'Pak' : 'Bu') + ' $_nama: Keliling lingarkan dengan diameter $d adalah $kel');
  }

  void speak(String msg) {
    print((_jk == JenisKelamin.L ? 'Pak' : 'Bu') + ' $_nama: ' + msg);
  }

  String? getNama() {
    return _nama;
  }

  String? getNIP() {
    return _nip;
  }

  JenisKelamin? getJenisKelamin() {
    return _jk;
  }

  int? getUmur() {
    return _umur;
  }
}

enum JenisKelamin {
  L,
  P
}