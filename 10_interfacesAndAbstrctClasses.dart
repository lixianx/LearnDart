abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}

class test extends Describable {
  String name;
  int tall;

  test(this.name, this.tall);
  @override
  void describe() {
    // TODO: implement describe
    print('My name is $name, My tall is $tall');
  }
}

// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
  test xiaoMing = test('XiaoMing', 178);
  xiaoMing.describeWithEmphasis();
}
