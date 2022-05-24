import 'graphql/graphql_api.graphql.dart';

class Amenities {
    GlobalTypes$Query$Options$GlobalTypesStatic amenitie = GlobalTypes$Query$Options$GlobalTypesStatic();
   bool isClicked=false;

   Amenities({required this.amenitie, required this.isClicked});

   Amenities.fromJson(Map<String, dynamic> json) {
     amenitie = json["amenitie"];
     isClicked = json['isClicked'];
   }
   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data["amenitie"] =this.amenitie;
     data['isClicked'] = this.isClicked;
     return data;
   }
}
