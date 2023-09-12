void main() {
  print('the below number was bigger ${compareFuntion(5, 6)}');
}

// we can send 2 digits, it will show smaller one and bigger one.
int compareFuntion(int a, int b) {
  if (a < b) {
    return b;
  } else {
    return a;
  }
}
