class Task {
  String title;
  bool isChecked = false;

  Task({required this.title});

  void toggleDone() {
    isChecked = !isChecked;
  }

  @override
  String toString() {
    return '$title; $isChecked';
  }
}
