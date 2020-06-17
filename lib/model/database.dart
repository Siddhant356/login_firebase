import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final CollectionReference loginCollection = Firestore.instance.collection('login');


}