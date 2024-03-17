import 'dart:io';

// Define an interface
abstract class Shape {
  void draw();
}

// Define a superclass
class Animal {
  void makeSound() {
    print('The animal makes a sound.');
  }
}

// Define a subclass that implements an interface and overrides a method
class Circle extends Animal implements Shape {
  double radius;

  Circle(this.radius);

  @override
  void draw() {
    print('Drawing a circle with radius $radius');
  }
}

// Define a class with a method that initializes an instance from a file
class Person {
  String name;

  Person(this.name);

  void printName() {
    print('Name: $name');
  }

  factory Person.fromFile(File file) {
    // Read data from file and initialize instance
    String name = file.readAsStringSync().trim();
    return Person(name);
  }
}

void main() {
  // Demonstrating object-oriented model with classes and inheritance
  Circle circle = Circle(5.0);
  circle.draw();
  circle.makeSound(); // Inherited method from Animal class

  // Initialize an instance of Person from a file
  File file = File('name.txt');
  if (file.existsSync()) {
    Person person = Person.fromFile(file);
    person.printName();
  } else {
    print('File not found.');
  }

  // Method demonstrating the use of a loop
  printNumbers();
}

void printNumbers() {
  // Method demonstrating the use of a loop
  print('Printing numbers from 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}
