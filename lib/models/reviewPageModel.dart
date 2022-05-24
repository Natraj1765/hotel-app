class ReviewModel {
  List<ContainerReview> containerReview = [];

  ReviewModel(
      {required this.containerReview});

  ReviewModel.fromJson(Map<String, dynamic> json) {
    containerReview = json['containerReview'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['containerReview'] = this.containerReview;
    return data;
  }
}

class ContainerReview {
  double rating = 0.0;
  String name='';
  String subName='';
  String desc='';
  String date='';

  ContainerReview(
      {required this.rating, required this.name,required this.subName, required this.desc,required this.date});

  ContainerReview.fromJson(Map<String, dynamic> json) {
    rating = json['rating'];
    name = json['name'];
    subName = json['subName'];
    desc = json['desc'];
    date = json['date'];

  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rating'] = this.rating;
    data['name'] = this.name;
    data['subName'] = this.subName;
    data['desc'] = this.desc;
    data['date'] = this.date;
    return data;
  }
}