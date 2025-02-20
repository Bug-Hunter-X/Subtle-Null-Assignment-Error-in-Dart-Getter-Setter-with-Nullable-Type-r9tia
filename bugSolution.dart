```dart
class MyClass {
  int? _myVariable;

  int get myVariable => _myVariable ?? 0; // Return 0 if null

  set myVariable(int? value) { //Modified to accept null
    _myVariable = value;
  }
}

void main() {
  MyClass obj = MyClass();
  print(obj.myVariable); //Prints 0 as expected

obj.myVariable = 10;
  print(obj.myVariable); //Prints 10 as expected

obj.myVariable = null; //Now works correctly.
  print(obj.myVariable); //Prints 0
}
```