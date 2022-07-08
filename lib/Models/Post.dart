class Post {
  String title = "";
  String author = "";
  String imagelink = "";
  String key = "";
  Post({required this.key,required this.title,required this.author,required this.imagelink});
  Map<String,dynamic> toMap(){
    return {
      "key":this.key,
      "title":this.title,
      "author":this.author,
      "imagelink":this.imagelink,
    };
  }
}
