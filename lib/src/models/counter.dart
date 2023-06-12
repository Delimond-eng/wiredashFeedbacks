class Counter {
  int? count;
  Counter({this.count = 0});

  void increment() {
    count = count! + 1;
  }

  void decrease() {
    if (count == 0) {
      return;
    }
    count = count! - 1;
  }
}
