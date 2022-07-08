

class LikeRelation{
  String UserKey="";
  String PostKey="";
  LikeRelation({required this.PostKey,required this.UserKey});
  Map<String,dynamic> toMap(){
    return {
      "UserKey":this.UserKey,
      "PostKey":this.PostKey,
    };
  }
}