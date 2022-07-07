import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:socialframe/Routes.dart';
import 'package:socialframe/Screens/RegisterProcess/Login.dart';
import 'package:socialframe/Screens/RegisterProcess/Signup.dart';
import 'package:socialframe/Screens/Splash.dart';
import 'package:socialframe/firebase_options.dart';

import 'Screens/RegisterProcess/Selector.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform
  );
  runApp(HomeApp());
}
class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        Routes.Splash:(context)=>Splash(),
        Routes.Selector:(context)=>Selector(),
        Routes.Signup:(context)=>Signup(),
        Routes.Login:(context)=>Login(),
      },
    );
  }
}
