import 'graphql/graphql_api.graphql.dart';

class PriceDetails {
  List<PriceModel> priceList = [];

  PriceDetails(
      {required this.priceList});

  PriceDetails.fromJson(Map<String, dynamic> json) {
    priceList = json['PriceList'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PriceList'] = this.priceList;
    return data;
  }
}

class PriceModel {
  int id = 0;
  String name='';
  String subName='';
  bool isClicked=false;
  FilterSortingOrderEnum sortStr = FilterSortingOrderEnum.priceAsc;

  PriceModel({
       required this.id,  required this.name, required this.subName,  required this.isClicked,required this.sortStr});
  PriceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    subName = json['subName'];
    isClicked = json['isClicked'];
    sortStr = json['sortStr'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['subName'] = this.subName;
    data['isClicked'] = this.isClicked;
    data['sortStr'] = this.sortStr;
    return data;
  }
}


class CurrencyDetails {
  List<CurrencyModel> currencyList = [];

  CurrencyDetails(
      {required this.currencyList});

  CurrencyDetails.fromJson(Map<String, dynamic> json) {
    currencyList = json['PriceList'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PriceList'] = this.currencyList;
    return data;
  }
}

class CurrencyModel {
  int id = 0;
  String name='';
  String subName='';
  bool isClicked=false;

  CurrencyModel({
    required this.id,  required this.name, required this.subName,  required this.isClicked});
  CurrencyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    subName = json['subName'];
    isClicked = json['isClicked'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['subName'] = this.subName;
    data['isClicked'] = this.isClicked;
    return data;
  }
}