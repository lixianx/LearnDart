const oneSecond = Duration(seconds: 1);
// ···
//未来的void, Future:契约，未来的返回值， async:创立一个新的时间线
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);//同步锁
  print(message);
}



void main() {
  Future<void> printWithDelay(String message) {
  return Future.delayed(oneSecond).then((_) {//时间监视器
    print(message);//未来函数
  });
}
}
