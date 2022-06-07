int square(int value) {
  return value * value;
}

int? squareNull(int? value) {
  if (value == null) return null;

  return value * value;
}

void main() {
  final squareValue = square(5);
  print(squareValue);

  final squareNullValue = squareNull(null);
  print(squareNullValue);

  // Assertion operator (!): Used when we know for sure that it has a value, if don't Dart throws and exception
  int? maybeValue;

  //maybeValue = null;
  //int value = maybeValue!;
  //print(value);

  // Flow analysis
  maybeValue = 42;
  if (maybeValue != null) {
    int value = maybeValue;
    print(value);
  }

  // If null operator (??): Returns the expression on its right if the value is null
  String? maybeString;
  String valueString = maybeString ?? "Null string";
  print(valueString);

  //String yesValue = maybeString != null ? maybeString : "Null yes string";

  // If null operator with assigment (??=)
  int? a;
  if (a == null) {
    a = 3;
  }
  print(a);

  int? b;

  b ??= 5;
  //b = b != null ? b : 5;
  print(b);

  // Null-aware operator (?): If item is not null, will execute instruction on the right. If item is null, will return null
  int? first(List<int>? items) {
    return items != null ? items[0] : null;
  }

  int? firstShot(List<int>? items) {
    return items?[0];
  }
}
