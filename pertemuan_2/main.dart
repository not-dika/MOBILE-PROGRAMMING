import 'dosen.dart';
import 'cow.dart';

void main() {
  Dosen d = new Dosen("Andre", "14.0.45", JenisKelamin.L, 30);
  print("Dosen namanya " + (d.getJenisKelamin() == JenisKelamin.L ? 'Pak' : "Bu") + ' ${d.getNama()} dengan NIP ${d.getNIP()} berumur ${d.getUmur()} tahun');
  d.hitungKelilingLingaran(14);
  d.hitungLuasSegitiga(6, 15);
  d.speak("Belajar Flutter");

  Cow cow = new Cow(weight: 105, speed: 85);
  cow.makeSound();
  cow.run();
}