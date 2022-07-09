import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:socialframe/Models/FollowRelation.dart';

class DBHelper {
  static var db = FirebaseFirestore.instance;
  static var auth = FirebaseAuth.instance;
  static var storage = FirebaseStorage.instance;
  static Future<void> FollowUser ({required String follower, required String followed}) async {
    db.runTransaction((transaction) async {
      var data =await db
          .collection("FollowRelation")
          .where("FollowerID", isEqualTo: follower)
          .where("FollowedID", isEqualTo: followed)
          .get();
      if(data.docs.length>0){
        var securesnap=await transaction.get(data.docs[0].reference);
        await transaction.delete(securesnap.reference);
      }
      else {
        await db
            .collection("FollowRelation").add(FollowRelation(FollowedID: followed, FollowerID: follower).toMap());
      }
    });
  }
}
