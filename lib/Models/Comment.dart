import '../Repository/AuthHelper.dart';

class Comment {
  String key = DateTime.now().microsecondsSinceEpoch.toString()+AuthHelper.generateRandomString(5);
  String text="";
  String userkey="";
  String postkey="";
  Comment({required this.key,required this.postkey,required this.userkey,required this.text});
  Map<String,dynamic> toMap(){
    return {
      "key":this.key,
      "text":this.text,
      "userkey":this.userkey,
      "postkey":this.postkey,
    };
  }
}