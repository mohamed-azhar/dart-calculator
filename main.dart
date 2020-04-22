import 'dart:io';

void main(){
  printIntro();

  while(true){
    var input = getOperation();
    input = input.toLowerCase();

  switch (input) {
    case "+":
    {
      input = getInputOne();
      int parsedOne = int.tryParse(input);

      input = getInputTwo();
      int parsedTwo = int.tryParse(input);

      if(parsedTwo == null){
          print("Couldnt parse to an integer");
      }

      print("$parsedOne + $parsedTwo = ${add(parsedOne, parsedTwo)}");
    }
    break;
    case "-":
    {
       input = getInputOne();
      int parsedOne = int.tryParse(input);

      input = getInputTwo();
      int parsedTwo = int.tryParse(input);

      if(parsedTwo == null){
          print("Couldnt parse to an integer");
      }

      print("$parsedOne - $parsedTwo = ${subtract(parsedOne, parsedTwo)}");
    }
    break;
    case "*":
    {
       input = getInputOne();
      int parsedOne = int.tryParse(input);

      input = getInputTwo();
      int parsedTwo = int.tryParse(input);

      if(parsedTwo == null){
          print("Couldnt parse to an integer");
      }

      print("$parsedOne x $parsedTwo = ${multiply(parsedOne, parsedTwo)}");
    }
    break;
    case "/":
    {
      input = getInputOne();
       
      var parsedOne = double.tryParse(input);

      input = getInputTwo();
      var parsedTwo = double.tryParse(input);

      if(parsedTwo == null){
          print("Couldnt parse to a double");
      }

      print("$parsedOne / $parsedTwo = ${divide(parsedOne, parsedTwo)}");
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

void printIntro(){
  print("#####################");
  print("#    CALCULATOR     #");
  print("#        +          #");
  print("#        -          #");
  print("#        /          #");
  print("#        *          #");
  print("#####################");
}

String getOperation(){
  stdout.write("Enter operation: ");
  return stdin.readLineSync();
}

String getInputOne(){
  stdout.write("Enter number one: ");
  return stdin.readLineSync();
}

String getInputTwo(){
  stdout.write("Enter number two: ");
  return stdin.readLineSync();
}

int add(int x, int y){
  return x+y;
}

int subtract(int x, int y){
  return x-y;
}

double divide(double x, double y){
  return x/y;
}

int multiply(int x, int y){
  return x*y;
}