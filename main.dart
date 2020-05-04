import 'dart:io';

void main() {
  printIntro();

  while (true) {
    var input = getOperation();
    input = input.toLowerCase();

    switch (input) {
      case "+":
        {
          List<int> inputs = getInputsAsInteger();
          print(
              "${inputs.first} + ${inputs.last} = ${add(inputs.first, inputs.last)}");
        }
        break;
      case "-":
        {
          List<int> inputs = getInputsAsInteger();
          print(
              "${inputs.first} - ${inputs.last} = ${subtract(inputs.first, inputs.last)}");
        }
        break;
      case "*":
        {
          List<int> inputs = getInputsAsInteger();
          print(
              "${inputs.first} x ${inputs.last} = ${multiply(inputs.first, inputs.last)}");
        }
        break;
      case "/":
        {
          List<double> inputs = getInputsAsDouble();
          print(
              "${inputs.first} / ${inputs.last} = ${divide(inputs.first, inputs.last)}");
        }
        break;
      case "q":
        {
          exit(69);
        }
        break;
      default:
        {
          print("Invalid Operation.");
        }
    }
  }
}

void printIntro() {
  print("#####################");
  print("#    CALCULATOR     #");
  print("#        +          #");
  print("#        -          #");
  print("#        /          #");
  print("#        *          #");
  print("#####################");
}

String getOperation() {
  stdout.write("Enter operation: ");
  return stdin.readLineSync();
}

List<String> getInputsAsStringList() {
  stdout.write("Enter number one: ");
  String numberOne = stdin.readLineSync();

  stdout.write("Enter number rwo: ");
  String numberTwo = stdin.readLineSync();

  var container = new List<String>();
  container.add(numberOne);
  container.add(numberTwo);

  return container;
}

List<int> getInputsAsInteger() {
  var inputs = getInputsAsStringList();
  var container = new List<int>();
  container.add(int.tryParse(inputs.first) ?? 0);
  container.add(int.tryParse(inputs.last) ?? 0);

  return container;
}

List<double> getInputsAsDouble() {
  var inputs = getInputsAsStringList();
  var container = new List<double>();
  container.add(double.tryParse(inputs.first) ?? 0.0);
  container.add(double.tryParse(inputs.last) ?? 0.0);

  return container;
}

int add(int x, int y) {
  return x + y;
}

int subtract(int x, int y) {
  return x - y;
}

double divide(double x, double y) {
  return x / y;
}

int multiply(int x, int y) {
  return x * y;
}
