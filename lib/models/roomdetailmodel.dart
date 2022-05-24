class RoomDetailModelClass {
  int refId=0;
  bool adults=false;
  bool child=false;
  int childNumber=0;
  int age = 0;
  int room = 0;

  RoomDetailModelClass({required this.age, required this.refId,required this.room,required this.adults,required this.child,required this.childNumber});

  RoomDetailModelClass.fromJson(Map<String, dynamic> json)
  {
    age = json['age'];
    refId = json['refId'];
    room = json['room'];
    adults = json['adults'];
    child = json['child'];
    childNumber = json['childNumber'];
  }
  Map<String, dynamic> toJson()
  {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['age'] = this.age;
    data['refId'] = this.refId;
    data['room'] = this.room;
    data['adults'] = this.adults;
    data['child'] = this.child;
    data['childNumber'] = this.childNumber;
    return data;
  }
}