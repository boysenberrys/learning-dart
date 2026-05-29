void main(List<String> args) {
  calculate(20, 20, addition, label: "Addition");
  calculate(78, 51, substract, label: "Substraction");
  calculate(21, 6, multiply, label: "Multplication");
  calculate(12, 2, divide, label: "division");
  calculate(4, 1, (a, b) => a * a, label: "square");
}

void calculate(
  num num1,
  num num2,
  num Function(num, num) press, {
  required String label,
}) {
  var total = press(num1, num2);
  print(" $label Result: $total");
}

num addition(num a, num b) => a + b;
num substract(num a, num b) => a - b;
num multiply(num a, num b) => a * b;
num divide(num a, num b) => a / b;
num square(num a, num b) => a * a;
