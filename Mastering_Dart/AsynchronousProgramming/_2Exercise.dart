Future<void> countdown({int uppervalue = 0}) async {
  for (int i = uppervalue; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1), () => print('$i'));
  }
  return Future(() => {});
}

void main() async {
  await countdown(uppervalue: 5);
}
