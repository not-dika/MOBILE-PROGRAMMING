double luasSegitiga(double a, double t) {
  return 0.5 * a * t;
}

double kelilingLingkaran(double r) {
  const pi = 3.14;

  return 2 * pi * r;
}

void main() {
  double alas_segitiga = 7.5;
  double tinggi_segitiga = 12.5;
  
  final double luas_segitiga = luasSegitiga(alas_segitiga, tinggi_segitiga);
  print('Luas segitiga dengan alas $alas_segitiga dan tinggi $tinggi_segitiga adalah $luas_segitiga');

  double diameter_lingaran = 10;

  final double keliling_lingkaran = kelilingLingkaran(diameter_lingaran/2);
  print('Keliling lingarkan dengan diameter $diameter_lingaran adalah $keliling_lingkaran');
}