class Ticker {
  Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (t) => ticks - t - 1).take(ticks);
  }
}