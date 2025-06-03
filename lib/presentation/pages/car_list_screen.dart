import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

import '../../dart/models/Car.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

  final List<Car> cars = [
    Car(
      id: '12',
      make: 'Macedes',
      model: 'S Class',
      year: 2012,
      distance: 589,
      fuelCapacity: 458,
      color: 'White',
      pricePerDay: 1000,
    ),
    Car(
      id: '12',
      make: 'Macedes',
      model: 'S Class',
      year: 2012,
      distance: 589,
      fuelCapacity: 458,
      color: 'White',
      pricePerDay: 1000,
    ),
    Car(
      id: '12',
      make: 'Macedes',
      model: 'S Class',
      year: 2012,
      distance: 589,
      fuelCapacity: 458,
      color: 'White',
      pricePerDay: 1000,
    ),
    Car(
      id: '12',
      make: 'Macedes',
      model: 'S Class',
      year: 2012,
      distance: 589,
      fuelCapacity: 458,
      color: 'White',
      pricePerDay: 1000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
