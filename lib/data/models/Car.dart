class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  Car({required this.model, required this.distance, required this.fuelCapacity, required this.pricePerHour});

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
        model: map['model'],
        distance: map['distance'],
        fuelCapacity: map['fuelCapacity'],
        pricePerHour: map['pricePerHour']
    );
  }
}


//1.0 domain/entities
//2.0 domain/repositories
//3.0 domain/datasources

//1.0 data/models
//2.0 domain/datasources
//3.0 domain/repositories