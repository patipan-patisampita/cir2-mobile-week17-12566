void setFuture() {
  print("Start");
  getUserName().then((value) => print(value));
  print("End");
}

Future<String> getUserName() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Mark';
  });
}
