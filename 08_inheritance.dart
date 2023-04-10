import '06_classes.dart';

class Orbiter extends Spacecraft {
  double altitude;
  Orbiter(super.neme, super.launchDate, this.altitude);
}

void main() {
  Orbiter OrientalRed = Orbiter('OrientalRed', DateTime(1990, 9, 1), 32984);
  OrientalRed.describe();
}
