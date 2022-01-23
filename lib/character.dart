class character {
  int _healtPoint;

  int get healtPoint => _healtPoint;

  // ignore: avoid_return_types_on_setters
  void set healtPoint(int value) {
    if (value < 0) {
      value = value * -1;
    }
    _healtPoint = value;
  }
}
