import 'dart:io';
import '06_classes.dart';

const oneSecond = Duration(seconds: 1);
//输入一个字符串列表作为文件名，如果.txt文件不存在，就创建一个
Future<void> createDescriptions(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {//该文件已经存在
        var modified = await file.lastModified();//返回上一次修改时间
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();//创建
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {//异常,运行时发生
      print('Cannot create describle for $object:$e');
    }
  }
}

void main() {
  var name = ['11_test_1', '11_test_2', '11_test_3'];
  createDescriptions(name);
}
