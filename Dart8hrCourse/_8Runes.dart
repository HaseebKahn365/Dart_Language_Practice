void main() {
  var runes = Runes('Haseeb')
      .map(
        (e) => e.toRadixString(16).padLeft(4, '0'),
      )
      .toList();
  print(runes);

  String name = '\u0048\u0061\u0073\u0065\u0065\u0062\u{1F339}';
  print(name);
}
