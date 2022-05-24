
class SurroundingDetails {
  List<SurroundingModel> surroundingList = [];
  SurroundingDetails(
      {required this.surroundingList});

  SurroundingDetails.fromJson(Map<String, dynamic> json) {
    surroundingList = json['SurroundingList'];

  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SurroundingList'] = this.surroundingList;
    return data;
  }
}

class SurroundingModel {
 late String name;
 late String description;
 late List<String> imgUrls;
 late bool isHeading;

 SurroundingModel({required this.name,required this.description,required this.imgUrls,required this.isHeading});

 SurroundingModel.fromJson(Map<String, dynamic> json, this.name, this.description, this.imgUrls,this.isHeading) {
    name = json['name'];
    description= json["description"];
    imgUrls =json["imgUrls"];
    isHeading = json["isHeading"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['imgUrls'] = this.imgUrls;
    data['isHeading']=this.isHeading;
    return data;
  }
}