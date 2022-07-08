
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DBHelper{
  static var db=FirebaseFirestore.instance;
  static var auth=FirebaseAuth.instance;
}