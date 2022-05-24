class CurrencyResponse {
late  String terms;
 late String privacy;
List<Currencies> currencies =[];

  CurrencyResponse({required this.terms, required this.privacy, required this.currencies});

  CurrencyResponse.fromJson(Map<String, dynamic> json) {
    terms = json['terms'];
    privacy = json['privacy'];
    if (json['currencies'] != null) {
      json['currencies'].forEach((v) {
        currencies.add(new Currencies.fromJson(v));
      });
    }
  }

}

class Currencies {
late  String iso;
late  String currencyName;
 late bool isObsolete;
 late String supercededBy;

  Currencies({required this.iso, required this.currencyName,required this.isObsolete,required this.supercededBy});

  Currencies.fromJson(Map<String, dynamic> json) {
    iso = json['iso'];
    currencyName = json['currency_name'];
    isObsolete = json['is_obsolete'];
    supercededBy = json['superceded_by'];
  }

}
