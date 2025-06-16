import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DbConnect extends StatelessWidget {
  const DbConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Firebase Demo', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  final CollectionReference users = FirebaseFirestore.instance.collection(
    'users',
  );

  void addUser() {
    users.add({'name': 'John Doe', 'email': 'johndoe@example.com'});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Firebase Firestore Demo')),
      body: Center(
        child: ElevatedButton(onPressed: addUser, child: Text('Add user')),
      ),
    );
  }
}
