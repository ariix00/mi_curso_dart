void main() {
  // final windPlant = EnergyPlant();
}

enum PlantType { nuclear, wind, water}

abstract class EnergyPlant {

double energyLeft;
PlantType type; // nuclear, wind, water

}