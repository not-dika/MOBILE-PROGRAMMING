mixin Running {
  String get name;
  int get speed;

  void run() {
    print("$name is running $speed km/h!");
  }
}