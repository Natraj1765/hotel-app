import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/utils/strings.dart';

class AccountModelData {
  final String img;
  final String title;
  final String trailingText;

  AccountModelData({required this.img, required this.title, required this.trailingText});

  static List<AccountModelData> getUsers1() {
    return <AccountModelData>[
      AccountModelData(
        img: 'assets/images/accountmenu/mytrip-icon.svg',
        title: Strings.myTrips,
        trailingText: '',
      ),
      // AccountModelData(
      //   img: 'assets/images/accountmenu/cotravelor-icon.svg',
      //   title: Strings.coTravellers,
      //   trailingText: '',
      // ),
      AccountModelData(
        img: 'assets/images/accountmenu/cards-icon.svg',
        title: Strings.preferredCurrency,
        trailingText: AppUtility().getCurrentCurrency(),
      ),
      AccountModelData(
        img: 'assets/images/accountmenu/myfavorite-icon.svg',
        title: Strings.myShortList,
        trailingText: '',
      ),
      AccountModelData(
        img: 'assets/images/accountmenu/savedCards-icon.svg',
        title: Strings.savedCards,
        trailingText: '',
      ),
      // AccountModelData(
      //   img: 'assets/images/accountmenu/Resetpassword-icon.svg',
      //   title: Strings.resetPassword,
      //   trailingText: '',
      // ),
      AccountModelData(
        img: 'assets/images/accountmenu/logout-icon.svg',
        title: Strings.logout,
        trailingText: '',
      ),
    ];
  }
}
