import 'package:flutter/material.dart';

class Notifications{
  String key="";
  String targetuser="";
  String type="";
  String mytext="";
  String VisitingUnit = "";
  Notifications({required this.key,required this.targetuser,required this.mytext,required this.type,required this.VisitingUnit});
  Map<String,dynamic> toMap(){
    return {
      "key":this.key,
      "targetuser":this.targetuser,
      "type":this.type,
      "mytext":this.mytext,
      "VisitingUser":this.VisitingUnit,
    };
  }
}
//For Types
//        1- if someone follows you
//        2- if someone likes your post
//        3- if someone comments on your post
//          type -post -user