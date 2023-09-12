void main() {
  // Map structure,
  // starting the curly brases symble was { and ending also same }
  // here we have key and value format and we need to specify those with quotes.

  Map students = {
    // key and value
    "name": "Ramu",
    "age": 29
  };
  List<Map> students_data = [
    {
      "name": "Ramu",
    },
  ];

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
