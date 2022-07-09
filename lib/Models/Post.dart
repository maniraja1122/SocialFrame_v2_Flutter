import 'package:socialframe/Repository/AuthHelper.dart';

class Post {
  String title = "";
  String author = "";
  String imagelink = "";
  String key = DateTime.now().microsecondsSinceEpoch.toString()+AuthHelper.generateRandomString(5);
  Post({required this.title,required this.author,required this.imagelink});
  Map<String,dynamic> toMap(){
    return {
      "key":this.key,
      "title":this.title,
      "author":this.author,
      "imagelink":this.imagelink,
    };
  }
}
