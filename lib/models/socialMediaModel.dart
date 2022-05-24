import 'package:jaz_app/utils/GlobalStates.dart';

class SocialMediaModel {
  final String img;
  final String name;
  final String link;

  SocialMediaModel({required this.img, required this.name, required this.link});

  static List<SocialMediaModel> getUsers() {
    return <SocialMediaModel>[
      SocialMediaModel(
          img: 'assets/images/accountmenu/facebook_icon.png',
          name: "",
          link: GlobalState.socialMediaLinks[0]["link"] ?? ""),
      SocialMediaModel(
          img: 'assets/images/accountmenu/instagram_icon.png',
          name: "",
          link: GlobalState.socialMediaLinks[1]["link"] ?? ""),
      SocialMediaModel(
          img: 'assets/images/accountmenu/linkedin_icon.png',
          name: "",
          link: GlobalState.socialMediaLinks[2]["link"] ?? ""),
      SocialMediaModel(
          img: 'assets/images/accountmenu/twitter_icon.png',
          name: "",
          link: GlobalState.socialMediaLinks[3]["link"] ?? ""),
      SocialMediaModel(
          img: 'assets/images/accountmenu/youtube_icon.png',
          name: "",
          link: GlobalState.socialMediaLinks[4]["link"] ?? ""),
    ];
  }
}
