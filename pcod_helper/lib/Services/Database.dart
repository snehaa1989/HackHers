import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseService{
  final String uid;
  DataBaseService({this.uid});
  final CollectionReference testRecord = Firestore.instance.collection("test");
  Future UpdateUserData (int Periods, bool Bleeding, bool hairgrowth,
      bool acne, bool WeightGain, bool baldness, bool Darkening,
      bool Headache) async{
      return await testRecord.document(uid).setData({
        "periods" : Periods,
        "Bleeding" : Bleeding,
        "hairgrowth" : hairgrowth,
        "acne" : acne,
        "WeightGain" : WeightGain,
        "baldness" : baldness,
        "Darkening" : Darkening,
        "Headache" : Headache,


      });

  }
}