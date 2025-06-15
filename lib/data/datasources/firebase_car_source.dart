import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/Car.dart';

class FirebaseCarDataSource {
  final FirebaseFirestore firestore;

  FirebaseCarDataSource({required this.firestore});

  Future<List<Car>> getCars() async {
    var snapshot = firestore.collection('cars').get;
    return snapshot.doc.map((doc) => Car.fromMap(doc.data()));
  }
}

extension
    on
        Future<QuerySnapshot<Map<String, dynamic>>> Function([
          GetOptions? options,
        ]) {
  get doc => null;
}
