import '06_classes.dart';
import '09_Mixins.dart';
//Orbiter类继承自Spacecraft类并且注入了Piloted类的方法
class Orbiter extends Spacecraft with Piloted {
  double altitude;
  Orbiter(super.neme, super.launchDate, this.altitude);
}

void main() {
  Orbiter OrientalRed = Orbiter('OrientalRed', DateTime(1990, 9, 1), 32984);
  OrientalRed.describe();
  OrientalRed.describeCrew();
}
