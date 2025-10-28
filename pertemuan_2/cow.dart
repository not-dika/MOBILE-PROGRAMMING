import 'animal.dart';
import 'running.dart';

class Cow extends Animal with Running{
  int speed;

  Cow({required weight, required this.speed}) : super(name: "Cow", weight: weight, type: "Land");

  @override
  void makeSound() {
    print("Cow: Mooo");
  }
}