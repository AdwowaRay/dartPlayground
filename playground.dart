import 'dart:io';
//import 'dart:async'; Not quite needed

// main() {
//   var first_name = 'Mary';
//   String last_name = 'Ahsan';

//   print(first_name + ' ' + last_name);
// }

/// Class
class Person {
  String name;
  int age;

  // Constructor
  // Person(String name, [int age = 10]) {
  //   this.name = name;
  //   this.age = age;
  // }

  // Constructor2
  Person(this.name, [this.age = 10]);

  // named constructor
  Person.guest() {
    name = 'Guest';
    age = 27;
  }

  // Function within a class is called method
  void showOut() {
    print(name);
    print(age);
  }
}

// use the keyword final if the type will defined by an inferred value
class Xerxes {
  final name;
  static const int age = 27; // const is a compile time constraint

  Xerxes(this.name);
}

// Extending a super class to a sub class

class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }

  void shout() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year, this.price) : super(model, year);

  void shout() {
    super.shout();
    print(this.price);
  }
}

// you can use '@override' when method overriding

// Getters and Setters
class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

main() async {
  /* Variable types
    int
    double
    String
    dynamic
  */

  // stdout.writeln('What is your name: ?');
  // String name = stdin.readLineSync();
  // print('My name is $name');

  // int amount1 = 100;
  // var amount2 = 200;

  // print('Amount1: $amount1 | Amount2: $amount2 \n');

  // double dAmount1 = 100.11;
  // var dAmount2 = 200.22;
  // print('dAmount1: $dAmount1');
  // print('dAmount2: $dAmount2');

  // String name1 = 'Malala';
  // var name2 = 'Sana';

  // print('My name is $name1 $name2 \n');

  // bool isItTrue1 = true;
  // var isItTrue2 = false;

  // print('isItTrue1: $isItTrue1 | isItTrue2: \n');
  // print('isItTrue2: $isItTrue2 | isItTrue2: \n');

  // dynamic weakVariable = 100;
  // print('WeakVariable 1: $weakVariable');

  // weakVariable = 'Dart Programming';
  // print('WeakVariable 2: $weakVariable');

  // // raw string
  // var rawString = r'In a raw string, not even \n gets special treatment.';
  // print(rawString);

  // // multiline string
  // var multilineString = '''This is a first
  // multiline string''';
  // var ms2 = """This is also a
  // multiline string""";
  // print(multilineString);
  // print(ms2);

  // // convert string --> int
  // var one = int.parse('1');
  // assert(one == 1); //check if one is == 1

  // //string -> double
  // var onePointOne = double.parse('1.1');
  // assert(onePointOne == 1.1);

  // //int -> string
  // String oneAsString = 1.toString();
  // assert(oneAsString == '1');

  // // double -> string
  // String piAsString = 3.14159.toStringAsFixed(2);
  // assert(piAsString == '3.14');

  // // multi aware operator (?.), (??), (??=)
  // // check if exists or print something else
  // var n = Num();
  // int number;

  // number = n?.num ?? 0;
  // print(number);

  // //print 100 if number2 is null
  // int number2;
  // print(number2);
  // print(number2 ??= 100); // 100 will be assigned to number2 if number2 is null
  // print(number);

  // //Ternary operator
  // int x = 100;
  // var result = x % 2 == 0 ? 'Even' : 'Odd';
  // print(result);
  // //Same as if x is even then print even else print odd

  // //Type test
  // var x = 100.00;
  // if (x is int) {
  //   print('integer');
  // }

  //Conditional Statement
  // int number = 100;
  // if (number % 2 == 0) {
  //   print('Even');
  // } else if (number % 3 == 0) {
  //   print('Odd');
  // } else {
  //   print('confused');
  // }

  // int number = 20;

  // switch (number) {
  //   case 0:
  //     print('Even');
  //     break;
  //   case 1:
  //     print('Odd');
  //     break;
  //   default:
  //     print('Confused');
  // }

  // //Standard for loop
  // for (var i = 1; i <= 10; ++i) {
  //   print(i);
  // }

  // // for ... in loop
  // var numbers = [1, 2, 3];

  // for (var n in numbers) {
  //   print(n);
  // }
  // // Same as:
  // for (var i = 0; i < numbers.length; ++i) {
  //   print(numbers[i]);
  // }

  // // forEach loop
  // var numbers = [1, 2, 3];
  // numbers.forEach((el) => print(el));
  // numbers.forEach(printNum);

  // //While loop
  // int num = 5;
  // while (num > 0) {
  //   print(num);
  //   num -= 1;
  // }

  // //do ... while
  // do {
  //   print(num);
  //   num -= 1;
  // } while (num > 0);

  // // break and continue

  // for (var i = 0; i < 10; ++i) {
  //   if (i > 5) break;
  //   print(i);
  // }

  // for (var i = 0; i < 10; ++i) {
  //   if (i % 2 == 0) continue;
  //   print("Odd: $i");
  // }

  /// Collection (list == array, set, map)
  // //List
  // List names = ['Jack', 'Jill', 10, 100, 11];
  // names[1] = 'Mark';
  // // String list
  // List<String> names2 = ['Jack', 'Jill'];
  // //Constant list
  // List names3 = const ['Jack', 'Jill'];
  // print(names.length);

  // var namesAgain = names2;

  // var namesSpread = [...names];

  // for (var n in names) {
  //   print(n);
  // }

  // //Set - unordered collection of unique items
  // var halogens = {'fluorine', 'chlorine', 'ne'};
  // //Declaring an empty hashset
  // var halogens2 = <String>{};
  // Set<String> names = {};
  // for (var x in halogens) {
  //   print(x);
  // }

  // // Map
  // var gifts = {
  //   // key:       Value
  //   'first': 'Partridge',
  //   'second': 'turtledoves',
  //   'fifth': 'golden rings'
  // };

  // print(gifts['fifth']);

  // var gifts2 = {
  //   // key:       Value
  //   '1': 'Partridge',
  //   '2': 'turtledoves',
  //   '3': 'golden rings'
  // };

  // print(gifts2[1]);

  // // declaring an empty map to be used
  // var giftsEmpty = Map();
  // giftsEmpty['first'] = 'Mango';

  // print(giftsEmpty['first']);

  /// FunctionS
  // showOutput(square(2));
  // showOutput(square(2.5));
  // showOutput(square(7));

  // var listHere = ['apples', 'bananas', 'oranges'];

  // listHere.forEach((item) {
  //   print(item); // Anonymous function cos it has no name
  // });

  // print(sum(1, 2));

  // print(sumHere(num1: 5, num2: 7)); // Calling positional argument function

  // // function call should work even if positional parameter is not provided
  // print(sumHereToo(30));

  // print(sumHereTool(35));

  // print(sumHereIn(78));

  // // Instantiating a class
  // Person person1 = Person('Nemew');
  // person1.showOut();

  // // person1.name = 'Lola';
  // // person1.age = 35;
  // var person2 = Person('Jack', 25);
  // person2.showOut();

  // var person3 = Person.guest();
  // person3.showOut();

  // var x = Xerxes('Maame');
  // print(x.name);

  // print(Xerxes.age);
  // var y = Xerxes('James');
  // print(y.name);

  // // They both act as constants
  // final man = 'Awudu';
  // const age = 30;

  // print(man);
  // print(age);

  // var car1 = Car('Rayall', 2020, 170000);
  // car1.shout();

  // var rectang = Rectangle(3, 4, 20, 15);
  // print(rectang.left);
  // rectang.right = 12;
  // print(rectang.left);

  // // Exception handling
  // letVerifyTheValue(10);
  // letVerifyTheValue(0);

  // Reading from and writing to files
  var contents = 'Hi there Ray';
  var myFile = new File('myfile.txt');
  // Add async to main function up there
  if (await myFile.exists()) {
    //myFile.writeAsStringSync(contents);

    // Read file
    print(myFile.readAsStringSync());
  }

  //if (await myFile.exists()) {}

  //var fileCopy = await File('myfile.txt').writeAsString(contents)
}

class Num {
  int num = 10;
}

//also forEach ... method
void printNum(num) {
  print(num);
}

//Dynamic function - can take any type of numerical value
dynamic square(var num) {
  return num * num;
}

// or
dynamic squares(var num) => num * num;

void showOutput(var msg) {
  print(msg);
}

dynamic sum(var num1, var num2) => num1 + num2;

// Positional argument function
dynamic sumHere({var num1, var num2}) => num1 + num2;

dynamic sumHereToo(var num1, {var num2}) => num1 + (num2 ?? 0);

// Providing default values for functional parameters
dynamic sumHereTool(var num1, {var num2 = 0}) => num1 + num2;

// Strictly Optional parameters
dynamic sumHereIn(var num1, [var num2]) => num1 + (num2 ?? 0);

int mustGreaterThanZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be grater than zero');
  }
  return val;
}

void letVerifyTheValue(var val) {
  var valueVerification;

  try {
    valueVerification = mustGreaterThanZero(val);
  } catch (e) {
    print(e);
  } finally {
    if (valueVerification == null) {
      print('Value is not accepted');
    } else {
      print('Value verified: $valueVerification');
    }
  }

  /* 
  // to catch a particular exception type;

  try {
    breedMoreLlamas();
  } on OutOfLlamasException {
    // A specific exception
    buyMoreLlamas();
  } on Exception catch (e) {}
    // Anything else that is an exception
    print('Unknown exception: $e');
  } catch (e) {
    // No specified type, handles all
    print('Something really unknow: $e');
  }
  */
}
