mixin Piloted {//注入接口 ioC依赖反转
///一个类获取另一个类的方法，而且不需要通过继承来实现
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}