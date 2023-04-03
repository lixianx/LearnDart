import "02_Variables.dart";

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

var result = fibonacci(20);

void main() {
  print(fibonacci(20));

  var nums = [0, 1, 2, 3, 4, 5];
  var nn = nums.map((num) => num * 2);
  nn.forEach(print);

  //筛选出含有字符串turn的元素并将其输出
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}
