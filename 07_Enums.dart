enum PlanetType { terrestrial, gas, ice }//枚举类

/// Enum that enumerates the different planets in our solar system
/// and some of their properties.
enum Planet {
  //更换键值对之后查看运行结果有何变化
  //相比于class，对象创建在里面
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  // ···
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  /// A constant generating constructor
  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  /// All instance variables are final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  /// Enhanced enums support getters and other methods
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

void main() {
  final myPlanet = Planet.uranus;
  if (!myPlanet.isGiant) {
    print('NO');
  } else
    print('YES');
}
