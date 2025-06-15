import '../../data/models/Car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}