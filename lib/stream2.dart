void setBroadcast() async {
  await for (int i in countForOneMinute()) {
    print(i);
  }
}

Stream<int> countForOneMinute() async* {
   for (int i = 1; i <= 10; i = i + 1) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
