import 'package:jaz_app/utils/strings.dart';

class AccountMenuModelData {
  final String img;
  final String title;

  AccountMenuModelData({required this.img, required this.title});

  static List<AccountMenuModelData> getUsers() {
    return <AccountMenuModelData>[
      // AccountMenuModelData(
      //   img: 'assets/images/accountmenu/Notify-bell-icon.svg',
      //   title: Strings.notification,
      // ),
      // AccountMenuModelData(
      //   img: 'assets/images/accountmenu/settings-icon.svg',
      //   title: Strings.settings,
      // ),
      // AccountMenuModelData(
      //   img: 'assets/images/accountmenu/star-icon.svg',
      //   title: Strings.rateUs,
      // ),
      AccountMenuModelData(
        img: 'assets/images/accountmenu/aboutus-icon.svg',
        title: Strings.aboutUs,
      ),
      AccountMenuModelData(
        img: 'assets/images/accountmenu/chatus-icon.svg',
        title: Strings.contactUs,
      ),
    ];
  }
}
