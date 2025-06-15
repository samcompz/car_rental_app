import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/Car.dart';
import '../bloc/car_bloc.dart';
import '../bloc/car_state.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

  final List<Car> cars = [
    Car(
      model: 'S Class',
      distance: 589,
      fuelCapacity: 3000,
      pricePerHour: 1000,
    ),
    Car(
      model: 'E Class',
      distance: 500000,
      fuelCapacity: 458,
      pricePerHour: 8000,
    ),
    Car(
      model: 'Maybach Class',
      distance: 2569000,
      fuelCapacity: 2000,
      pricePerHour: 5000,
    ),
    Car(
      model: 'C Class',
      distance: 580009,
      fuelCapacity: 8000,
      pricePerHour: 20000,
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
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          if (state is CarsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CarsLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return CarCard(car: state.cars[index]);
              },
              itemCount: state.cars.length,
            );
          } else if (state is CarsError) {
            return Center(child: Text("Error: ${state.message}"));
          }
          return Container();
        },
      ),
    );
  }
}
