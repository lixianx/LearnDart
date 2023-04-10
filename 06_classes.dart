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

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null); //this:构造函数

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
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
