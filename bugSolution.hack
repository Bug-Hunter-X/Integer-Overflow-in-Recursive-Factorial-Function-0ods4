function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x > 12) {
    return -1; // Indicate overflow
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    var result = foo(x);
    if (result == -1) {
      print("Factorial overflow!");
      return -1;
    } else {
      return result;
    }
  }
}

function main(): void {
  print(bar(5));
  print(bar(13));
}
