import 'package:car_rental_app/data/datasources/firebase_car_source.dart';
import 'package:car_rental_app/domain/repositories/car_repository.dart';

import '../models/Car.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}
