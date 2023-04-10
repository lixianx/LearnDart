mixin Piloted {//注入接口 ioC依赖反转
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}