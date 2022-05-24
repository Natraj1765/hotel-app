class StarRatings {
  final int userId;
  final String img;
  final String title;
  bool isCheck=false;
  final int value;

  StarRatings({required this.userId, required this.img, required this.title, required this.isCheck,required this.value});

  static List<StarRatings> getUsers() {
    return <StarRatings>[
      StarRatings(
          userId: 1,
          img: 'assets/images/4star_icon.svg',
          title: "4+ Stars",
          isCheck: false,value:4),
      StarRatings(
          userId: 2,
          img: 'assets/images/5star_icon.svg',
          title: "5 Stars",
          isCheck: false,value:5),
    ];
  }
}