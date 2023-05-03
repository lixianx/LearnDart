import 'dart:html';

void main() {
  var numbers = [1, 2, 3, 4, 5];
  numbers.where((n) => n % 2 == 0).map((n) => n * 2).forEach((n) => print(n));
  //级联
  var elem = DivElement();
  elem
    ..text = 'Hello word!'
    ..style.color = 'red'
    ..style.backgroundColor = 'yellow';
}
