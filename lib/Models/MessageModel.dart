import 'package:flutter/material.dart';

class MessageModel {
  String chatkey="";
  String message = "";
  String sender="";
  MessageModel({required this.chatkey,required this.sender,required this.message});
  Map<String,dynamic> toMap(){
    return {
      "chatkey":this.chatkey,
      "message":this.message,
      "sender":this.sender,
    };
  }
}
