// class RoomModelClass {
//   late int age;
//   late int refId;
//   RoomModelClass({ required this.age, required this.refId});
//
//   RoomModelClass.fromJson(Map<String, dynamic> json) {
//     age = json['age'];
//     refId = json['refId'];
//   }
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['age'] = this.age;
//     data['refId'] = this.refId;
//     return data;
//   }
// }

import 'dart:collection';
import 'package:collection/collection.dart';

class Room {

  int roomNumber = 0;
  List<int> adultList = [];
  List<String> childList = [];
  HashMap<String,dynamic> roomDetail = HashMap();

  Room(
      {required this.roomNumber, required this.adultList, required this.childList,required this.roomDetail});

  Room.fromJson(Map<String, dynamic> json) {
    roomNumber = json['roomNumber'];
    adultList = json['adultList'];
    childList = json['childList'];
    roomDetail = json["roomDetail"];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['roomNumber'] = this.roomNumber;
    data['adultList'] = this.adultList;
    data['childList'] = this.childList;
    data["roomDetail"] = this.roomDetail;
    return data;
  }
  Function eq =  ListEquality().equals;

  @override
  bool operator ==(Object other) {
   return identical(this, other) ||
        other is Room &&
            runtimeType == other.runtimeType &&
            roomNumber == other.roomNumber &&
            eq(adultList, other.adultList) &&
            eq(childList, other.childList);
  }
  @override
  int get hashCode => roomNumber.hashCode+adultList.hashCode+childList.hashCode;
 }