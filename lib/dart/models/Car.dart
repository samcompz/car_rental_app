class Car {
  final String id;
  final String make;
  final String model;
  final int year;
  final double distance;
  final double fuelCapacity;
  final String color;
  final double pricePerDay;
  final bool isAvailable;

  Car({
    required this.id,
    required this.make,
    required this.model,
    required this.year,
    required this.distance,
    required this.fuelCapacity,
    required this.color,
    required this.pricePerDay,
    this.isAvailable = true,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      id: json['id'] as String,
      make: json['make'] as String,
      model: json['model'] as String,
      year: json['year'] as int,
      distance: json['distance'] as double,
      fuelCapacity: json['fuelCapacity'] as double,
      color: json['color'] as String,
      pricePerDay: (json['pricePerDay'] as num).toDouble(),
      isAvailable: json['isAvailable'] ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'make': make,
      'model': model,
      'year': year,
      'distance' : distance,
      'fuelCapacity': fuelCapacity,
      'color': color,
      'pricePerDay': pricePerDay,
      'isAvailable': isAvailable,
    };
  }
}