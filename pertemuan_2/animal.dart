abstract class Animal {
  String name;
  int weight;
  String type;

  Animal({required this.name, required this.weight, required this.type});

  void eat(int amount) {
    weight = weight + amount;
  }

  void makeSound();
}