void main() {
  // final windPlant = EnergyPlant();

final windPlant = WindPlant(initalEnergy: 100);

print('wind: ${ chargePhone(windPlant)}');
}

double chargePhone( EnergyPlant plant ){
  if (plant.energyLeft < 10 ) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}


enum PlantType { nuclear, wind, water}

abstract class EnergyPlant {

double energyLeft;
PlantType type; // nuclear, wind, water

EnergyPlant({
  required this.energyLeft,
  required this.type
});

void consumeEnergy(double amount);

}
//extends o implements
class WindPlant extends EnergyPlant {

WindPlant({ required double initalEnergy})
:super(energyLeft: initalEnergy, type: PlantType.wind);

@override
void consumeEnergy(double amount) {
  energyLeft -=amount;
}

}