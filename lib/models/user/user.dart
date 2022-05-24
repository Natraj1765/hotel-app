class UserModel {
  late Address address;
  late Contact contact;
  CustomerLoyalty customerLoyalty = CustomerLoyalty();
  late Name name;
  PaymentCard paymentCard = PaymentCard();
  SynXisInfo synXisInfo = SynXisInfo();
  String title="";
  String gender="";
  List<dynamic> favourites = [];

  UserModel(
      {required this.address,
        required this.contact,
        required this.name,
       });

  UserModel.fromJson(Map<String, dynamic> json) {
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : Address();
    contact =
    json['contact'] != null ? new Contact.fromJson(json['contact']) : Contact();
    customerLoyalty = json['customerLoyalty'] != null
        ? new CustomerLoyalty.fromJson(json['customerLoyalty'])
        : CustomerLoyalty();
    name = json['name'] != null ? new Name.fromJson(json['name']) : Name();
    paymentCard = json['paymentCard'] != null
        ? new PaymentCard.fromJson(json['paymentCard'])
        : PaymentCard();
    synXisInfo = json['synXisInfo'] != null
        ? new SynXisInfo.fromJson(json['synXisInfo'])
        : SynXisInfo();
    gender = json['gender'];
    title = json['title'];
    favourites = json['favourites'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
      data['address'] = this.address.toJson();
      data['contact'] = this.contact.toJson();
      data['customerLoyalty'] = this.customerLoyalty.toJson();
      data['name'] = this.name.toJson();
      data['paymentCard'] = this.paymentCard.toJson();
      data['synXisInfo'] = this.synXisInfo.toJson();
      data['gender'] = this.gender;
      data['title'] = this.title;
      data['favourites']=this.favourites;
    return data;
  }
}

class Address {
  String addressLine1="";
  String addressLine2="";
  String addressLine3="";
  String city="";
  String country="";
  String fullAddress="";
  String state="";
  String zip="";

  Address();

  Address.fromJson(Map<String, dynamic> json) {
    addressLine1 = json['addressLine1'];
    addressLine2 = json['addressLine2'];
    addressLine3 = json['addressLine3'];
    city = json['city'];
    country = json['country'];
    fullAddress = json['fullAddress'];
    state = json['state'];
    zip = json['zip'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['addressLine1'] = this.addressLine1;
    data['addressLine2'] = this.addressLine2;
    data['addressLine3'] = this.addressLine3;
    data['city'] = this.city;
    data['country'] = this.country;
    data['fullAddress'] = this.fullAddress;
    data['state'] = this.state;
    data['zip'] = this.zip;
    return data;
  }
}

class Contact {
  String emailAddress="";
  String landLine="";
  String mobilePhone="";
  String phoneNumbers="";
  String countryCode="";

  Contact();

  Contact.fromJson(Map<String, dynamic> json) {
    emailAddress = json['emailAddress'];
    landLine = json['landLine'];
    mobilePhone = json['mobilePhone'];
    phoneNumbers = json['phoneNumbers'];
    countryCode = json['countryCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['emailAddress'] = this.emailAddress;
    data['landLine'] = this.landLine;
    data['mobilePhone'] = this.mobilePhone;
    data['phoneNumbers'] = this.phoneNumbers;
    data['countryCode'] = this.countryCode;
    return data;
  }
}

class CustomerLoyalty {
  String effectiveDate="";
  String expireDate="";
  String loyaltyLevel="";
  String membershipNumber="";
  String pinNumber="";
  int points=0;
  String programCode="";
  String signupDate="";
  String gender="";

  CustomerLoyalty();

  CustomerLoyalty.fromJson(Map<String, dynamic> json) {
    effectiveDate = json['effectiveDate'];
    expireDate = json['expireDate'];
    loyaltyLevel = json['loyaltyLevel'];
    membershipNumber = json['membershipNumber'];
    pinNumber = json['pinNumber'];
    points = json['points'];
    programCode = json['programCode'];
    signupDate = json['signupDate'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['effectiveDate'] = this.effectiveDate;
    data['expireDate'] = this.expireDate;
    data['loyaltyLevel'] = this.loyaltyLevel;
    data['membershipNumber'] = this.membershipNumber;
    data['pinNumber'] = this.pinNumber;
    data['points'] = this.points;
    data['programCode'] = this.programCode;
    data['signupDate'] = this.signupDate;
    data['gender'] = this.gender;
    return data;
  }
}

class Name {
  String firstName="";
  String fullName="";
  String lastName="";
  String middleInitial="";
  String middleName="";
  String profileImage="";

  Name();

  Name.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    fullName = json['fullName'];
    lastName = json['lastName'];
    middleInitial = json['middleInitial'];
    middleName = json['middleName'];
    profileImage = json['profileImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['fullName'] = this.fullName;
    data['lastName'] = this.lastName;
    data['middleInitial'] = this.middleInitial;
    data['middleName'] = this.middleName;
    data['profileImage'] = this.profileImage;
    return data;
  }
}

class PaymentCard {
  String cardCode="";
  String cardHolderName="";
  String cardNumber="";
  String expireMonth="";
  String expireYear="";
  String cvcCode = "";
  String obscuredCardNumber="";
  String seriesCode="";

  PaymentCard();

  PaymentCard.fromJson(Map<String, dynamic> json) {
    cardCode = json['cardCode'];
    cardHolderName = json['cardHolderName'];
    cardNumber = json['cardNumber'];
    expireMonth = json['expireMonth'];
    expireYear = json['expireYear'];
    cvcCode = json['cvcCode'];
    obscuredCardNumber = json['obscuredCardNumber'];
    seriesCode = json['seriesCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cardCode'] = this.cardCode;
    data['cardHolderName'] = this.cardHolderName;
    data['cardNumber'] = this.cardNumber;
    data['expireMonth'] = this.expireMonth;
    data['expireYear'] = this.expireYear;
    data['cvcCode'] = this.cvcCode;
    data['obscuredCardNumber'] = this.obscuredCardNumber;
    data['seriesCode'] = this.seriesCode;
    return data;
  }
}

class SynXisInfo {
  String synXisPassword="";
  String synXisUserID="";

  SynXisInfo();

  SynXisInfo.fromJson(Map<String, dynamic> json) {
    synXisPassword = json['synXisPassword'];
    synXisUserID = json['synXisUserID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['synXisPassword'] = this.synXisPassword;
    data['synXisUserID'] = this.synXisUserID;
    return data;
  }
}