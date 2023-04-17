class Spacecraft {
  String name;
  DateTime? launchDate; //launchDate的类型不明确

  // Read-only non-final property
  //launchYear:函数
  int? get launchYear => launchDate?.year; //返回launchDate的year属性，可能是int类型，也可能为空

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    //构造函数
    // Initialization code goes here.
  }
  //针对性构造函数
  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null); //this:构造函数

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      //DateTime.now()返回当前时间对象
      //difference()返回两个日期的时间间隔
      //inDays()将时间间隔转为天数间隔
      //~/整除
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  Spacecraft Voyager = Spacecraft('Voyager I', DateTime(1997, 9, 5));
  Voyager.describe();
  Spacecraft Voyager3 = Spacecraft.unlaunched('vayager III');
  Voyager3.describe();
}
