const oneSecond = Duration(seconds: 1);
// ···
//未来的void, Future:契约，未来的返回值， async:创立一个新的时间线
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond); //同步锁,,此处可插入一个动作等待用户完成
  print(message);
}

Future<String> hello() async {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Hello Word!';
  });
}

void main() {
  //回调函数，在异步函数完成时调用
  Future<void> printWithDelay(String message) {
    return Future.delayed(oneSecond).then((_) {
      //时间监视器
      print(message); //未来函数
    });
  }

  hello().then((str) {
    print(str);
  });

  hello();
}
