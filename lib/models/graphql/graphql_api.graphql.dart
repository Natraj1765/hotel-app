// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

mixin DetailOfferDataMixin {
  late String id;
  String? externalId;
  late String hash;
  late Map<String, dynamic> hotelContentId;
  double? hotelOfferCategory;
  late bool isInFavorites;
  late String productCode;
  late int lengthOfStay;
  String? sourceCode;
  DetailOfferDataMixin$Price? price;
  DetailOfferDataMixin$Departure? departure;
  @JsonKey(name: 'return')
  DetailOfferDataMixin$Kw$return? kw$return;
  DetailOfferDataMixin$TourOperator? tourOperator;
  late DetailOfferDataMixin$OfferStart offerStart;
  late DetailOfferDataMixin$OfferEnd offerEnd;
  DetailOfferDataMixin$Rooms? rooms;
  String? programType;
  String? travelType;
  String? brand;
  bool? soldOut;
  @JsonKey(unknownEnumValue: OfferOfferIncludesEnum.artemisUnknown)
  List<OfferOfferIncludesEnum>? offerIncludes;
  bool? transferIncluded;
  @JsonKey(name: '__typename')
  String? $$typename;
}
mixin DiscountInfoFieldsMixin {
  double? fullAmount;
  int? fullDiscountPercentage;
  double? discountAmount;
  String? discountReason;
  bool? discountAmountPerNight;
  double? perNightFullAmount;
  int? perNightDiscountPercentage;
  @JsonKey(name: '__typename')
  String? $$typename;
}
mixin TsbobCollectionOfferFieldsMixin {
  String? sourceCode;
  late String hash;
  bool isInFavoritesCheck=false;
  late bool isInFavorites;
  double? hotelOfferCategory;
  late int lengthOfStay;
  DateTime? offerStartDate;
  late Map<String, dynamic> hotelContentId;
  TsbobCollectionOfferFieldsMixin$TourOperator? tourOperator;
  late TsbobCollectionOfferFieldsMixin$OfferStart offerStart;
  late TsbobCollectionOfferFieldsMixin$OfferEnd offerEnd;
  TsbobCollectionOfferFieldsMixin$Rooms? rooms;
  TsbobCollectionOfferFieldsMixin$Price? price;
  TsbobCollectionOfferFieldsMixin$Departure? departure;
  @JsonKey(name: 'return')
  TsbobCollectionOfferFieldsMixin$Kw$return? kw$return;
  @JsonKey(name: '__typename')
  String? $$typename;
}
mixin TsbobCollectionOfferFlightsMixin {
  TsbobCollectionOfferFlightsMixin$DepartureAirport? departureAirport;
  TsbobCollectionOfferFlightsMixin$ArrivalAirport? arrivalAirport;
  TsbobCollectionOfferFlightsMixin$Airline? airline;
  TsbobCollectionOfferFlightsMixin$ArrivalDateTime? arrivalDateTime;
  TsbobCollectionOfferFlightsMixin$DepartureDateTime? departureDateTime;
  int? duration;
  int? stopOver;
  List<TsbobCollectionOfferFlightsMixin$FlightSegments>? flightSegments;
  @JsonKey(name: '__typename')
  String? $$typename;
}
mixin BaseImagesMixin {
  BaseImagesMixin$MainImage? mainImage;
  List<BaseImagesMixin$Images?>? images;
  @JsonKey(name: '__typename')
  String? $$typename;
}
mixin BaseShipImagesMixin {
  BaseShipImagesMixin$MainImage? mainImage;
  List<BaseShipImagesMixin$Images?>? images;
  @JsonKey(name: '__typename')
  String? $$typename;
}

@JsonSerializable(explicitToJson: true)
class GlobalTypes$Query$Options$GlobalTypesStatic$Data extends JsonSerializable
    with EquatableMixin {
  GlobalTypes$Query$Options$GlobalTypesStatic$Data();

  factory GlobalTypes$Query$Options$GlobalTypesStatic$Data.fromJson(
          Map<String, dynamic> json) =>
      _$GlobalTypes$Query$Options$GlobalTypesStatic$DataFromJson(json);

  String? icon;

  bool? hidden;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [icon, hidden, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$GlobalTypes$Query$Options$GlobalTypesStatic$DataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GlobalTypes$Query$Options$GlobalTypesStatic$Children
    extends JsonSerializable with EquatableMixin {
  GlobalTypes$Query$Options$GlobalTypesStatic$Children();

  factory GlobalTypes$Query$Options$GlobalTypesStatic$Children.fromJson(
          Map<String, dynamic> json) =>
      _$GlobalTypes$Query$Options$GlobalTypesStatic$ChildrenFromJson(json);

  String? label;

  String? value;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [label, value, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$GlobalTypes$Query$Options$GlobalTypesStatic$ChildrenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GlobalTypes$Query$Options$GlobalTypesStatic extends JsonSerializable
    with EquatableMixin {
  GlobalTypes$Query$Options$GlobalTypesStatic();

  factory GlobalTypes$Query$Options$GlobalTypesStatic.fromJson(
          Map<String, dynamic> json) =>
      _$GlobalTypes$Query$Options$GlobalTypesStaticFromJson(json);

  String? label;

  String? value;

  GlobalTypes$Query$Options$GlobalTypesStatic$Data? data;

  List<GlobalTypes$Query$Options$GlobalTypesStatic$Children>? children;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [label, value, data, children, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$GlobalTypes$Query$Options$GlobalTypesStaticToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GlobalTypes$Query$Options extends JsonSerializable with EquatableMixin {
  GlobalTypes$Query$Options();

  factory GlobalTypes$Query$Options.fromJson(Map<String, dynamic> json) =>
      _$GlobalTypes$Query$OptionsFromJson(json);

  List<GlobalTypes$Query$Options$GlobalTypesStatic>? globalTypesStatic;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [globalTypesStatic, $$typename];
  @override
  Map<String, dynamic> toJson() => _$GlobalTypes$Query$OptionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GlobalTypes$Query extends JsonSerializable with EquatableMixin {
  GlobalTypes$Query();

  factory GlobalTypes$Query.fromJson(Map<String, dynamic> json) =>
      _$GlobalTypes$QueryFromJson(json);

  GlobalTypes$Query$Options? options;

  @override
  List<Object?> get props => [options];
  @override
  Map<String, dynamic> toJson() => _$GlobalTypes$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetHotelsAutocomplete$Query$HotelSearch$References
    extends JsonSerializable with EquatableMixin {
  GetHotelsAutocomplete$Query$HotelSearch$References();

  factory GetHotelsAutocomplete$Query$HotelSearch$References.fromJson(
          Map<String, dynamic> json) =>
      _$GetHotelsAutocomplete$Query$HotelSearch$ReferencesFromJson(json);

  List<int>? giataCodes;

  List<int>? hotelIds;

  List<int>? opicCodes;

  List<int>? iffCodes;

  List<int>? drvCodes;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props =>
      [giataCodes, hotelIds, opicCodes, iffCodes, drvCodes, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$GetHotelsAutocomplete$Query$HotelSearch$ReferencesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetHotelsAutocomplete$Query$HotelSearch extends JsonSerializable
    with EquatableMixin {
  GetHotelsAutocomplete$Query$HotelSearch();

  factory GetHotelsAutocomplete$Query$HotelSearch.fromJson(
          Map<String, dynamic> json) =>
      _$GetHotelsAutocomplete$Query$HotelSearchFromJson(json);

  String? label;

  GetHotelsAutocomplete$Query$HotelSearch$References? references;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [label, references, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$GetHotelsAutocomplete$Query$HotelSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetHotelsAutocomplete$Query extends JsonSerializable with EquatableMixin {
  GetHotelsAutocomplete$Query();

  factory GetHotelsAutocomplete$Query.fromJson(Map<String, dynamic> json) =>
      _$GetHotelsAutocomplete$QueryFromJson(json);

  @Deprecated('Use keywordSearch query instead')
  List<GetHotelsAutocomplete$Query$HotelSearch?>? hotelSearch;

  @override
  List<Object?> get props => [hotelSearch];
  @override
  Map<String, dynamic> toJson() => _$GetHotelsAutocomplete$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FavoritesInfo$Query$Favorites extends JsonSerializable
    with EquatableMixin {
  FavoritesInfo$Query$Favorites();

  factory FavoritesInfo$Query$Favorites.fromJson(Map<String, dynamic> json) =>
      _$FavoritesInfo$Query$FavoritesFromJson(json);

  String? id;

  int? count;

  bool? ownIdentity;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [id, count, ownIdentity, $$typename];
  @override
  Map<String, dynamic> toJson() => _$FavoritesInfo$Query$FavoritesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FavoritesInfo$Query extends JsonSerializable with EquatableMixin {
  FavoritesInfo$Query();

  factory FavoritesInfo$Query.fromJson(Map<String, dynamic> json) =>
      _$FavoritesInfo$QueryFromJson(json);

  FavoritesInfo$Query$Favorites? favorites;

  List<String>? favoriteIds;

  @override
  List<Object?> get props => [favorites, favoriteIds];
  @override
  Map<String, dynamic> toJson() => _$FavoritesInfo$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Destinations$Query$Options$Destinations$Children$Children$Children$Children
    extends JsonSerializable with EquatableMixin {
  Destinations$Query$Options$Destinations$Children$Children$Children$Children();

  factory Destinations$Query$Options$Destinations$Children$Children$Children$Children.fromJson(
          Map<String, dynamic> json) =>
      _$Destinations$Query$Options$Destinations$Children$Children$Children$ChildrenFromJson(
          json);

  String? label;

  String? value;

  @override
  List<Object?> get props => [label, value];
  @override
  Map<String, dynamic> toJson() =>
      _$Destinations$Query$Options$Destinations$Children$Children$Children$ChildrenToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Destinations$Query$Options$Destinations$Children$Children$Children
    extends JsonSerializable with EquatableMixin {
  Destinations$Query$Options$Destinations$Children$Children$Children();

  factory Destinations$Query$Options$Destinations$Children$Children$Children.fromJson(
          Map<String, dynamic> json) =>
      _$Destinations$Query$Options$Destinations$Children$Children$ChildrenFromJson(
          json);

  String? label;

  String? value;

  List<Destinations$Query$Options$Destinations$Children$Children$Children$Children>?
      children;

  @override
  List<Object?> get props => [label, value, children];
  @override
  Map<String, dynamic> toJson() =>
      _$Destinations$Query$Options$Destinations$Children$Children$ChildrenToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Destinations$Query$Options$Destinations$Children$Children
    extends JsonSerializable with EquatableMixin {
  Destinations$Query$Options$Destinations$Children$Children();

  factory Destinations$Query$Options$Destinations$Children$Children.fromJson(
          Map<String, dynamic> json) =>
      _$Destinations$Query$Options$Destinations$Children$ChildrenFromJson(json);

  String? label;

  String? value;

  List<Destinations$Query$Options$Destinations$Children$Children$Children>?
      children;

  @override
  List<Object?> get props => [label, value, children];
  @override
  Map<String, dynamic> toJson() =>
      _$Destinations$Query$Options$Destinations$Children$ChildrenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Destinations$Query$Options$Destinations$Children extends JsonSerializable
    with EquatableMixin {
  Destinations$Query$Options$Destinations$Children();

  factory Destinations$Query$Options$Destinations$Children.fromJson(
          Map<String, dynamic> json) =>
      _$Destinations$Query$Options$Destinations$ChildrenFromJson(json);

  String? label;

  String? value;

  List<Destinations$Query$Options$Destinations$Children$Children>? children;

  @override
  List<Object?> get props => [label, value, children];
  @override
  Map<String, dynamic> toJson() =>
      _$Destinations$Query$Options$Destinations$ChildrenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Destinations$Query$Options$Destinations extends JsonSerializable
    with EquatableMixin {
  Destinations$Query$Options$Destinations();

  factory Destinations$Query$Options$Destinations.fromJson(
          Map<String, dynamic> json) =>
      _$Destinations$Query$Options$DestinationsFromJson(json);

  String? label;
  String? nodeCode;
  String? value;

  List<Destinations$Query$Options$Destinations$Children>? children;

  @override
  List<Object?> get props => [label, value, nodeCode, children];
  @override
  Map<String, dynamic> toJson() =>
      _$Destinations$Query$Options$DestinationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Destinations$Query$Options extends JsonSerializable with EquatableMixin {
  Destinations$Query$Options();

  factory Destinations$Query$Options.fromJson(Map<String, dynamic> json) =>
      _$Destinations$Query$OptionsFromJson(json);

  List<Destinations$Query$Options$Destinations>? destinations;

  @override
  List<Object?> get props => [destinations];
  @override
  Map<String, dynamic> toJson() => _$Destinations$Query$OptionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Destinations$Query extends JsonSerializable with EquatableMixin {
  Destinations$Query();

  factory Destinations$Query.fromJson(Map<String, dynamic> json) =>
      _$Destinations$QueryFromJson(json);

  Destinations$Query$Options? options;

  @override
  List<Object?> get props => [options];
  @override
  Map<String, dynamic> toJson() => _$Destinations$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetHotelReviews$Query$Reviews$PageInfo extends JsonSerializable
    with EquatableMixin {
  GetHotelReviews$Query$Reviews$PageInfo();

  factory GetHotelReviews$Query$Reviews$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetHotelReviews$Query$Reviews$PageInfoFromJson(json);

  late int resultsTotal;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [resultsTotal, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$GetHotelReviews$Query$Reviews$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetHotelReviews$Query$Reviews$List extends JsonSerializable
    with EquatableMixin {
  GetHotelReviews$Query$Reviews$List();

  factory GetHotelReviews$Query$Reviews$List.fromJson(
          Map<String, dynamic> json) =>
      _$GetHotelReviews$Query$Reviews$ListFromJson(json);

  double? ratingAllOver;

  String? headline;

  String? title;

  String? firstName;

  String? age;

  String? monthOfTravel;

  String? yearOfTravel;

  String? travelledAs;

  String? conclusion;

  String? ratingId;

  String? fullReviewUrl;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        ratingAllOver,
        headline,
        title,
        firstName,
        age,
        monthOfTravel,
        yearOfTravel,
        travelledAs,
        conclusion,
        ratingId,
        fullReviewUrl,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetHotelReviews$Query$Reviews$ListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetHotelReviews$Query$Reviews extends JsonSerializable
    with EquatableMixin {
  GetHotelReviews$Query$Reviews();

  factory GetHotelReviews$Query$Reviews.fromJson(Map<String, dynamic> json) =>
      _$GetHotelReviews$Query$ReviewsFromJson(json);

  GetHotelReviews$Query$Reviews$PageInfo? pageInfo;

  List<GetHotelReviews$Query$Reviews$List?>? list;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [pageInfo, list, $$typename];
  @override
  Map<String, dynamic> toJson() => _$GetHotelReviews$Query$ReviewsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetHotelReviews$Query extends JsonSerializable with EquatableMixin {
  GetHotelReviews$Query();

  factory GetHotelReviews$Query.fromJson(Map<String, dynamic> json) =>
      _$GetHotelReviews$QueryFromJson(json);

  List<String>? hotelRatingGroupCodes;

  GetHotelReviews$Query$Reviews? reviews;

  @override
  List<Object?> get props => [hotelRatingGroupCodes, reviews];
  @override
  Map<String, dynamic> toJson() => _$GetHotelReviews$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReviewsFilter extends JsonSerializable with EquatableMixin {
  ReviewsFilter({this.ratingProductId, this.iffCode, this.travelledAs});

  factory ReviewsFilter.fromJson(Map<String, dynamic> json) =>
      _$ReviewsFilterFromJson(json);

  String? ratingProductId;

  int? iffCode;

  String? travelledAs;

  @override
  List<Object?> get props => [ratingProductId, iffCode, travelledAs];
  @override
  Map<String, dynamic> toJson() => _$ReviewsFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PagingInput extends JsonSerializable with EquatableMixin {
  PagingInput({required this.page, required this.resultsPerPage});

  factory PagingInput.fromJson(Map<String, dynamic> json) =>
      _$PagingInputFromJson(json);

  late int page;

  late int resultsPerPage;

  @override
  List<Object?> get props => [page, resultsPerPage];
  @override
  Map<String, dynamic> toJson() => _$PagingInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOfferList$Query$ProductOffers$Hotels$Offers extends JsonSerializable
    with EquatableMixin, DetailOfferDataMixin {
  GetOfferList$Query$ProductOffers$Hotels$Offers();

  factory GetOfferList$Query$ProductOffers$Hotels$Offers.fromJson(
          Map<String, dynamic> json) =>
      _$GetOfferList$Query$ProductOffers$Hotels$OffersFromJson(json);

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        id,
        externalId,
        hash,
        hotelContentId,
        hotelOfferCategory,
        isInFavorites,
        productCode,
        lengthOfStay,
        sourceCode,
        price,
        departure,
        kw$return,
        tourOperator,
        offerStart,
        offerEnd,
        rooms,
        programType,
        travelType,
        brand,
        soldOut,
        offerIncludes,
        transferIncluded,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOfferList$Query$ProductOffers$Hotels$OffersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOfferList$Query$ProductOffers$Hotels extends JsonSerializable
    with EquatableMixin {
  GetOfferList$Query$ProductOffers$Hotels();

  factory GetOfferList$Query$ProductOffers$Hotels.fromJson(
          Map<String, dynamic> json) =>
      _$GetOfferList$Query$ProductOffers$HotelsFromJson(json);

  late List<GetOfferList$Query$ProductOffers$Hotels$Offers> offers;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [offers, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOfferList$Query$ProductOffers$HotelsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOfferList$Query$ProductOffers$Pagination extends JsonSerializable
    with EquatableMixin {
  GetOfferList$Query$ProductOffers$Pagination();

  factory GetOfferList$Query$ProductOffers$Pagination.fromJson(
          Map<String, dynamic> json) =>
      _$GetOfferList$Query$ProductOffers$PaginationFromJson(json);

  late int resultsTotal;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [resultsTotal, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOfferList$Query$ProductOffers$PaginationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOfferList$Query$ProductOffers extends JsonSerializable
    with EquatableMixin {
  GetOfferList$Query$ProductOffers();

  factory GetOfferList$Query$ProductOffers.fromJson(
          Map<String, dynamic> json) =>
      _$GetOfferList$Query$ProductOffersFromJson(json);

  List<GetOfferList$Query$ProductOffers$Hotels>? hotels;

  GetOfferList$Query$ProductOffers$Pagination? pagination;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [hotels, pagination, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOfferList$Query$ProductOffersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOfferList$Query extends JsonSerializable with EquatableMixin {
  GetOfferList$Query();

  factory GetOfferList$Query.fromJson(Map<String, dynamic> json) =>
      _$GetOfferList$QueryFromJson(json);

  GetOfferList$Query$ProductOffers? productOffers;

  @override
  List<Object?> get props => [productOffers];
  @override
  Map<String, dynamic> toJson() => _$GetOfferList$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Price$DiscountInfo extends JsonSerializable
    with EquatableMixin, DiscountInfoFieldsMixin {
  DetailOfferDataMixin$Price$DiscountInfo();

  factory DetailOfferDataMixin$Price$DiscountInfo.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Price$DiscountInfoFromJson(json);

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        fullAmount,
        fullDiscountPercentage,
        discountAmount,
        discountReason,
        discountAmountPerNight,
        perNightFullAmount,
        perNightDiscountPercentage,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Price$DiscountInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Price extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Price();

  factory DetailOfferDataMixin$Price.fromJson(Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$PriceFromJson(json);

  late double amount;

  double? perPersonAmount;

  late double perNightAmount;

  late double taxAmount;

  late String currency;

  int? refId;

  DetailOfferDataMixin$Price$DiscountInfo? discountInfo;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        amount,
        perPersonAmount,
        perNightAmount,
        taxAmount,
        currency,
        refId,
        discountInfo,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() => _$DetailOfferDataMixin$PriceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$DepartureAirport extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Departure$DepartureAirport();

  factory DetailOfferDataMixin$Departure$DepartureAirport.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$DepartureAirportFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$DepartureAirportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$ArrivalAirport extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Departure$ArrivalAirport();

  factory DetailOfferDataMixin$Departure$ArrivalAirport.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$ArrivalAirportFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$ArrivalAirportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$Airline extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Departure$Airline();

  factory DetailOfferDataMixin$Departure$Airline.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$AirlineFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$AirlineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$ArrivalDateTime extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Departure$ArrivalDateTime();

  factory DetailOfferDataMixin$Departure$ArrivalDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$ArrivalDateTimeFromJson(json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$ArrivalDateTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$DepartureDateTime extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Departure$DepartureDateTime();

  factory DetailOfferDataMixin$Departure$DepartureDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$DepartureDateTimeFromJson(json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$DepartureDateTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTime
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTime();

  factory DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTimeFromJson(
          json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTimeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTime
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTime();

  factory DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTimeFromJson(
          json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTimeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$FlightSegments$DepartureAirport
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Departure$FlightSegments$DepartureAirport();

  factory DetailOfferDataMixin$Departure$FlightSegments$DepartureAirport.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$FlightSegments$DepartureAirportFromJson(
          json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$FlightSegments$DepartureAirportToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirport
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirport();

  factory DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirport.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirportFromJson(
          json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirportToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$FlightSegments$Airline
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Departure$FlightSegments$Airline();

  factory DetailOfferDataMixin$Departure$FlightSegments$Airline.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$FlightSegments$AirlineFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$FlightSegments$AirlineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure$FlightSegments extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Departure$FlightSegments();

  factory DetailOfferDataMixin$Departure$FlightSegments.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Departure$FlightSegmentsFromJson(json);

  String? flightNumber;

  DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTime?
      arrivalDateTime;

  DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTime?
      departureDateTime;

  DetailOfferDataMixin$Departure$FlightSegments$DepartureAirport?
      departureAirport;

  DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirport? arrivalAirport;

  DetailOfferDataMixin$Departure$FlightSegments$Airline? airline;

  int? duration;

  int? distance;

  String? bookingClass;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        flightNumber,
        arrivalDateTime,
        departureDateTime,
        departureAirport,
        arrivalAirport,
        airline,
        duration,
        distance,
        bookingClass,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Departure$FlightSegmentsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Departure extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Departure();

  factory DetailOfferDataMixin$Departure.fromJson(Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$DepartureFromJson(json);

  DetailOfferDataMixin$Departure$DepartureAirport? departureAirport;

  DetailOfferDataMixin$Departure$ArrivalAirport? arrivalAirport;

  DetailOfferDataMixin$Departure$Airline? airline;

  DetailOfferDataMixin$Departure$ArrivalDateTime? arrivalDateTime;

  DetailOfferDataMixin$Departure$DepartureDateTime? departureDateTime;

  String? flightKey;

  String? flightCode;

  String? flightID;

  String? flightLabel;

  String? flightNumber;

  int? duration;

  int? priority;

  int? stopOver;

  int? distance;

  String? bookingCode;

  String? bookingClass;

  List<DetailOfferDataMixin$Departure$FlightSegments>? flightSegments;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        departureAirport,
        arrivalAirport,
        airline,
        arrivalDateTime,
        departureDateTime,
        flightKey,
        flightCode,
        flightID,
        flightLabel,
        flightNumber,
        duration,
        priority,
        stopOver,
        distance,
        bookingCode,
        bookingClass,
        flightSegments,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() => _$DetailOfferDataMixin$DepartureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$DepartureAirport extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Kw$return$DepartureAirport();

  factory DetailOfferDataMixin$Kw$return$DepartureAirport.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$DepartureAirportFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$DepartureAirportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$ArrivalAirport extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Kw$return$ArrivalAirport();

  factory DetailOfferDataMixin$Kw$return$ArrivalAirport.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$ArrivalAirportFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$ArrivalAirportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$Airline extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Kw$return$Airline();

  factory DetailOfferDataMixin$Kw$return$Airline.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$AirlineFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$AirlineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$ArrivalDateTime extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Kw$return$ArrivalDateTime();

  factory DetailOfferDataMixin$Kw$return$ArrivalDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$ArrivalDateTimeFromJson(json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$ArrivalDateTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$DepartureDateTime extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Kw$return$DepartureDateTime();

  factory DetailOfferDataMixin$Kw$return$DepartureDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$DepartureDateTimeFromJson(json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$DepartureDateTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTime
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTime();

  factory DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTimeFromJson(
          json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTimeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTime
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTime();

  factory DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTimeFromJson(
          json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTimeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirport
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirport();

  factory DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirport.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirportFromJson(
          json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirportToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirport
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirport();

  factory DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirport.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirportFromJson(
          json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirportToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$FlightSegments$Airline
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Kw$return$FlightSegments$Airline();

  factory DetailOfferDataMixin$Kw$return$FlightSegments$Airline.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$FlightSegments$AirlineFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$FlightSegments$AirlineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return$FlightSegments extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Kw$return$FlightSegments();

  factory DetailOfferDataMixin$Kw$return$FlightSegments.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$return$FlightSegmentsFromJson(json);

  String? flightNumber;

  DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTime?
      arrivalDateTime;

  DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTime?
      departureDateTime;

  DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirport?
      departureAirport;

  DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirport? arrivalAirport;

  DetailOfferDataMixin$Kw$return$FlightSegments$Airline? airline;

  int? duration;

  int? distance;

  String? bookingClass;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        flightNumber,
        arrivalDateTime,
        departureDateTime,
        departureAirport,
        arrivalAirport,
        airline,
        duration,
        distance,
        bookingClass,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Kw$return$FlightSegmentsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Kw$return extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Kw$return();

  factory DetailOfferDataMixin$Kw$return.fromJson(Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Kw$returnFromJson(json);

  DetailOfferDataMixin$Kw$return$DepartureAirport? departureAirport;

  DetailOfferDataMixin$Kw$return$ArrivalAirport? arrivalAirport;

  DetailOfferDataMixin$Kw$return$Airline? airline;

  DetailOfferDataMixin$Kw$return$ArrivalDateTime? arrivalDateTime;

  DetailOfferDataMixin$Kw$return$DepartureDateTime? departureDateTime;

  String? flightKey;

  String? flightCode;

  String? flightID;

  String? flightLabel;

  String? flightNumber;

  int? duration;

  int? priority;

  int? stopOver;

  int? distance;

  String? bookingCode;

  String? bookingClass;

  List<DetailOfferDataMixin$Kw$return$FlightSegments>? flightSegments;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        departureAirport,
        arrivalAirport,
        airline,
        arrivalDateTime,
        departureDateTime,
        flightKey,
        flightCode,
        flightID,
        flightLabel,
        flightNumber,
        duration,
        priority,
        stopOver,
        distance,
        bookingCode,
        bookingClass,
        flightSegments,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() => _$DetailOfferDataMixin$Kw$returnToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$TourOperator extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$TourOperator();

  factory DetailOfferDataMixin$TourOperator.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$TourOperatorFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$TourOperatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$OfferStart extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$OfferStart();

  factory DetailOfferDataMixin$OfferStart.fromJson(Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$OfferStartFromJson(json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$OfferStartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$OfferEnd extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$OfferEnd();

  factory DetailOfferDataMixin$OfferEnd.fromJson(Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$OfferEndFromJson(json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() => _$DetailOfferDataMixin$OfferEndToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$Board extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$Board();

  factory DetailOfferDataMixin$Rooms$Room$Board.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$BoardFromJson(json);

  String? label;

  String? description;

  String? code;

  String? opCode;

  String? name;

  String? localizedName;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props =>
      [label, description, code, opCode, name, localizedName, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$BoardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$NbcAttributes extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$NbcAttributes();

  factory DetailOfferDataMixin$Rooms$Room$NbcAttributes.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$NbcAttributesFromJson(json);

  String? code;

  String? name;

  String? icon;

  String? localizedName;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [code, name, icon, localizedName, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$NbcAttributesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$Extras extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$Extras();

  factory DetailOfferDataMixin$Rooms$Room$Extras.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$ExtrasFromJson(json);

  String? type;

  bool? included;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [type, included, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$ExtrasToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$Views extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$Views();

  factory DetailOfferDataMixin$Rooms$Room$Views.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$ViewsFromJson(json);

  String? code;

  String? label;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [code, label, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$ViewsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$MainImage$Preview extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$MainImage$Preview();

  factory DetailOfferDataMixin$Rooms$Room$MainImage$Preview.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$MainImage$PreviewFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$MainImage$PreviewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$MainImage$Kw$default
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$MainImage$Kw$default();

  factory DetailOfferDataMixin$Rooms$Room$MainImage$Kw$default.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$MainImage$Kw$defaultFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$MainImage$Kw$defaultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$MainImage$Default2x
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$MainImage$Default2x();

  factory DetailOfferDataMixin$Rooms$Room$MainImage$Default2x.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$MainImage$Default2xFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$MainImage$Default2xToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$MainImage extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$MainImage();

  factory DetailOfferDataMixin$Rooms$Room$MainImage.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$MainImageFromJson(json);

  DetailOfferDataMixin$Rooms$Room$MainImage$Preview? preview;

  @JsonKey(name: 'default')
  DetailOfferDataMixin$Rooms$Room$MainImage$Kw$default? kw$default;

  DetailOfferDataMixin$Rooms$Room$MainImage$Default2x? default2x;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [preview, kw$default, default2x, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$MainImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$Images$Original$Size
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$Images$Original$Size();

  factory DetailOfferDataMixin$Rooms$Room$Images$Original$Size.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$Images$Original$SizeFromJson(json);

  int? width;

  int? height;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [width, height, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$Images$Original$SizeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$Images$Original extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$Images$Original();

  factory DetailOfferDataMixin$Rooms$Room$Images$Original.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$Images$OriginalFromJson(json);

  DetailOfferDataMixin$Rooms$Room$Images$Original$Size? size;

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [size, url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$Images$OriginalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$Size
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$Size();

  factory DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$Size.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$SizeFromJson(
          json);

  int? width;

  int? height;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [width, height, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$SizeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140
    extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140();

  factory DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140FromJson(json);

  DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$Size? size;

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [size, url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$Images extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$Images();

  factory DetailOfferDataMixin$Rooms$Room$Images.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$ImagesFromJson(json);

  DetailOfferDataMixin$Rooms$Room$Images$Original? original;

  DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140? thumbnail210x140;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [original, thumbnail210x140, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$ImagesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$Codes extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$Codes();

  factory DetailOfferDataMixin$Rooms$Room$Codes.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$CodesFromJson(json);

  String? code;

  String? label;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [code, label, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$CodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$RoomView extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$RoomView();

  factory DetailOfferDataMixin$Rooms$Room$RoomView.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$RoomViewFromJson(json);

  String? name;

  String? localizedName;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, localizedName, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$RoomViewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room$Price extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room$Price();

  factory DetailOfferDataMixin$Rooms$Room$Price.fromJson(
          Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$Room$PriceFromJson(json);

  late double amount;

  double? perPersonAmount;

  late double taxAmount;

  late String currency;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props =>
      [amount, perPersonAmount, taxAmount, currency, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$Room$PriceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms$Room extends JsonSerializable
    with EquatableMixin {
  DetailOfferDataMixin$Rooms$Room();

  factory DetailOfferDataMixin$Rooms$Room.fromJson(Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$Rooms$RoomFromJson(json);

  DetailOfferDataMixin$Price$DiscountInfo? discountInfo;
  String? promoCode;
  DetailOfferDataMixin$Rooms$Room$Board? board;

  String? opCode;

  String? description;

  List<DetailOfferDataMixin$Rooms$Room$NbcAttributes?>? nbcAttributes;

  List<DetailOfferDataMixin$Rooms$Room$Extras>? extras;

  int? extraBeds;

  bool? priceByUnit;

  List<DetailOfferDataMixin$Rooms$Room$Views>? views;

  String? roomKey;

  DetailOfferDataMixin$Rooms$Room$MainImage? mainImage;

  List<DetailOfferDataMixin$Rooms$Room$Images?>? images;

  String? name;

  String? localizedName;

  String? size;

  List<DetailOfferDataMixin$Rooms$Room$Codes>? codes;

  DetailOfferDataMixin$Rooms$Room$RoomView? roomView;

  DetailOfferDataMixin$Rooms$Room$Price? price;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        discountInfo,
        promoCode,
        board,
        opCode,
        description,
        nbcAttributes,
        extras,
        extraBeds,
        priceByUnit,
        views,
        roomKey,
        mainImage,
        images,
        name,
        localizedName,
        size,
        codes,
        roomView,
        price,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$DetailOfferDataMixin$Rooms$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DetailOfferDataMixin$Rooms extends JsonSerializable with EquatableMixin {
  DetailOfferDataMixin$Rooms();

  factory DetailOfferDataMixin$Rooms.fromJson(Map<String, dynamic> json) =>
      _$DetailOfferDataMixin$RoomsFromJson(json);

  List<DetailOfferDataMixin$Rooms$Room>? room;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [room, $$typename];
  @override
  Map<String, dynamic> toJson() => _$DetailOfferDataMixin$RoomsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PackageOfferRequestInput extends JsonSerializable with EquatableMixin {
  PackageOfferRequestInput(
      {this.metaAttributeFilter,
      required this.productSearch,
      this.pagination,
      this.sortingOrder});

  factory PackageOfferRequestInput.fromJson(Map<String, dynamic> json) =>
      _$PackageOfferRequestInputFromJson(json);

  MetaAttributeFilterInput? metaAttributeFilter;

  late ProductSearchInput productSearch;

  PagingGroupFilterInput? pagination;

  @JsonKey(unknownEnumValue: FilterSortingOrderEnum.artemisUnknown)
  FilterSortingOrderEnum? sortingOrder;

  @override
  List<Object?> get props =>
      [metaAttributeFilter, productSearch, pagination, sortingOrder];
  @override
  Map<String, dynamic> toJson() => _$PackageOfferRequestInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MetaAttributeFilterInput extends JsonSerializable with EquatableMixin {
  MetaAttributeFilterInput({this.currency});

  factory MetaAttributeFilterInput.fromJson(Map<String, dynamic> json) =>
      _$MetaAttributeFilterInputFromJson(json);

  String? currency;

  @override
  List<Object?> get props => [currency];
  @override
  Map<String, dynamic> toJson() => _$MetaAttributeFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductSearchInput extends JsonSerializable with EquatableMixin {
  ProductSearchInput(
      {this.bookingType,
      this.nodeCodes,
      this.travellersFilter,
      this.travellersRooms,
      this.travelPeriod,
      this.priceRangeFilter,
      this.hotelFilter,
      this.flightDetailsFilter,
      this.brandFilter,
      this.travelTypeFilter,
      this.transferIncluded,
      this.discountOnly,
      this.offerIncludes,
      this.programType,
      this.vouchers});

  factory ProductSearchInput.fromJson(Map<String, dynamic> json) =>
      _$ProductSearchInputFromJson(json);

  @JsonKey(unknownEnumValue: BookingTypeEnum.artemisUnknown)
  BookingTypeEnum? bookingType;

  List<String>? nodeCodes;

  List<TravellerFilterInput>? travellersFilter;

  List<TravellersRoomInput>? travellersRooms;

  TravelPeriodFilterInput? travelPeriod;

  PriceRangeFilterInput? priceRangeFilter;

  RequestBaseHotelFilterInput? hotelFilter;

  FlightDetailsFilterInput? flightDetailsFilter;

  RequestBaseBrandFilterInput? brandFilter;

  TravelTypeFilterInput? travelTypeFilter;

  bool? transferIncluded;

  bool? discountOnly;

  @JsonKey(unknownEnumValue: PackageOfferIncludesEnum.artemisUnknown)
  List<PackageOfferIncludesEnum>? offerIncludes;

  String? programType;

  List<String>? vouchers;

  @override
  List<Object?> get props => [
        bookingType,
        nodeCodes,
        travellersFilter,
        travellersRooms,
        travelPeriod,
        priceRangeFilter,
        hotelFilter,
        flightDetailsFilter,
        brandFilter,
        travelTypeFilter,
        transferIncluded,
        discountOnly,
        offerIncludes,
        programType,
        vouchers
      ];
  @override
  Map<String, dynamic> toJson() => _$ProductSearchInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TravellerFilterInput extends JsonSerializable with EquatableMixin {
  TravellerFilterInput({required this.age, this.refId});

  factory TravellerFilterInput.fromJson(Map<String, dynamic> json) =>
      _$TravellerFilterInputFromJson(json);

  late int age;

  int? refId;

  @override
  List<Object?> get props => [age, refId];
  @override
  Map<String, dynamic> toJson() => _$TravellerFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TravellersRoomInput extends JsonSerializable with EquatableMixin {
  TravellersRoomInput({required this.refIds, this.id});

  factory TravellersRoomInput.fromJson(Map<String, dynamic> json) =>
      _$TravellersRoomInputFromJson(json);

  late List<int> refIds;

  String? id;

  @override
  List<Object?> get props => [refIds, id];
  @override
  Map<String, dynamic> toJson() => _$TravellersRoomInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TravelPeriodFilterInput extends JsonSerializable with EquatableMixin {
  TravelPeriodFilterInput(
      {this.departureDateTime,
      this.returnDateTime,
      required this.minDuration,
      required this.maxDuration,
      this.durationKind});

  factory TravelPeriodFilterInput.fromJson(Map<String, dynamic> json) =>
      _$TravelPeriodFilterInputFromJson(json);

  DateTimeRangeFilterInput? departureDateTime;

  DateTimeRangeFilterInput? returnDateTime;

  late int minDuration;

  late int maxDuration;

  @JsonKey(unknownEnumValue: TravelPeriodFilterDurationKindEnum.artemisUnknown)
  TravelPeriodFilterDurationKindEnum? durationKind;

  @override
  List<Object?> get props => [
        departureDateTime,
        returnDateTime,
        minDuration,
        maxDuration,
        durationKind
      ];
  @override
  Map<String, dynamic> toJson() => _$TravelPeriodFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DateTimeRangeFilterInput extends JsonSerializable with EquatableMixin {
  DateTimeRangeFilterInput(
      {this.dateRangeFilter, this.timeRangeFilter, this.daysOfWeek});

  factory DateTimeRangeFilterInput.fromJson(Map<String, dynamic> json) =>
      _$DateTimeRangeFilterInputFromJson(json);

  DateRangeFilterInput? dateRangeFilter;

  TimeRangeFilterInput? timeRangeFilter;

  @JsonKey(unknownEnumValue: DayOfWeekFilterInput.artemisUnknown)
  List<DayOfWeekFilterInput?>? daysOfWeek;

  @override
  List<Object?> get props => [dateRangeFilter, timeRangeFilter, daysOfWeek];
  @override
  Map<String, dynamic> toJson() => _$DateTimeRangeFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DateRangeFilterInput extends JsonSerializable with EquatableMixin {
  DateRangeFilterInput({this.minDate, this.maxDate});

  factory DateRangeFilterInput.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFilterInputFromJson(json);

  DateTime? minDate;

  DateTime? maxDate;

  @override
  List<Object?> get props => [minDate, maxDate];
  @override
  Map<String, dynamic> toJson() => _$DateRangeFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TimeRangeFilterInput extends JsonSerializable with EquatableMixin {
  TimeRangeFilterInput({this.minTime, this.maxTime});

  factory TimeRangeFilterInput.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeFilterInputFromJson(json);

  String? minTime;

  String? maxTime;

  @override
  List<Object?> get props => [minTime, maxTime];
  @override
  Map<String, dynamic> toJson() => _$TimeRangeFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PriceRangeFilterInput extends JsonSerializable with EquatableMixin {
  PriceRangeFilterInput({required this.minPrice, required this.maxPrice});

  factory PriceRangeFilterInput.fromJson(Map<String, dynamic> json) =>
      _$PriceRangeFilterInputFromJson(json);

  late int minPrice;

  late int maxPrice;

  @override
  List<Object?> get props => [minPrice, maxPrice];
  @override
  Map<String, dynamic> toJson() => _$PriceRangeFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestBaseHotelFilterInput extends JsonSerializable with EquatableMixin {
  RequestBaseHotelFilterInput(
      {this.ratings,
      this.hotelAttributesFilter,
      this.hotelLanguagesFilter,
      this.hotelActivitiesFilter,
      this.hotelCategoryFilter,
      this.minCategory,
      this.maxCategory,
      this.roomCodes,
      this.roomAttributes,
      this.roomViews,
      this.boardCodes,
      this.hotelNames,
      this.productCodes,
      this.references,
      this.roomOpCode});

  factory RequestBaseHotelFilterInput.fromJson(Map<String, dynamic> json) =>
      _$RequestBaseHotelFilterInputFromJson(json);

  List<RatingFilterInput>? ratings;

  HotelAttributesFilterInput? hotelAttributesFilter;

  HotelLanguagesFilterInput? hotelLanguagesFilter;

  HotelActivitiesFilterInput? hotelActivitiesFilter;

  HotelCategoryFilterInput? hotelCategoryFilter;

  double? minCategory;

  double? maxCategory;

  List<String>? roomCodes;

  List<String>? roomAttributes;

  List<String>? roomViews;

  List<String>? boardCodes;

  List<String>? hotelNames;

  List<String>? productCodes;

  List<HotelReferenceInput>? references;

  String? roomOpCode;

  @override
  List<Object?> get props => [
        ratings,
        hotelAttributesFilter,
        hotelLanguagesFilter,
        hotelActivitiesFilter,
        hotelCategoryFilter,
        minCategory,
        maxCategory,
        roomCodes,
        roomAttributes,
        roomViews,
        boardCodes,
        hotelNames,
        productCodes,
        references,
        roomOpCode
      ];
  @override
  Map<String, dynamic> toJson() => _$RequestBaseHotelFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RatingFilterInput extends JsonSerializable with EquatableMixin {
  RatingFilterInput(
      {required this.code,
      required this.value,
      this.kw$operator,
      this.normalized,
      this.normalizedRange,
      this.provider});

  factory RatingFilterInput.fromJson(Map<String, dynamic> json) =>
      _$RatingFilterInputFromJson(json);

  @JsonKey(unknownEnumValue: RatingFilterCodeEnum.artemisUnknown)
  late RatingFilterCodeEnum code;

  late int value;

  @JsonKey(
      name: 'operator',
      unknownEnumValue: RatingFilterOperatorEnum.artemisUnknown)
  RatingFilterOperatorEnum? kw$operator;

  bool? normalized;

  NormalizedRangeInput? normalizedRange;

  @JsonKey(unknownEnumValue: RatingProvider.artemisUnknown)
  RatingProvider? provider;

  @override
  List<Object?> get props =>
      [code, value, kw$operator, normalized, normalizedRange, provider];
  @override
  Map<String, dynamic> toJson() => _$RatingFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NormalizedRangeInput extends JsonSerializable with EquatableMixin {
  NormalizedRangeInput({required this.min, required this.max});

  factory NormalizedRangeInput.fromJson(Map<String, dynamic> json) =>
      _$NormalizedRangeInputFromJson(json);

  late int min;

  late int max;

  @override
  List<Object?> get props => [min, max];
  @override
  Map<String, dynamic> toJson() => _$NormalizedRangeInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HotelAttributesFilterInput extends JsonSerializable with EquatableMixin {
  HotelAttributesFilterInput({this.kw$operator, this.hotelAttributes});

  factory HotelAttributesFilterInput.fromJson(Map<String, dynamic> json) =>
      _$HotelAttributesFilterInputFromJson(json);

  @JsonKey(
      name: 'operator',
      unknownEnumValue: HotelAttributesFilterOperatorEnum.artemisUnknown)
  HotelAttributesFilterOperatorEnum? kw$operator;

  List<String>? hotelAttributes;

  @override
  List<Object?> get props => [kw$operator, hotelAttributes];
  @override
  Map<String, dynamic> toJson() => _$HotelAttributesFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HotelLanguagesFilterInput extends JsonSerializable with EquatableMixin {
  HotelLanguagesFilterInput({this.kw$operator, this.hotelLanguages});

  factory HotelLanguagesFilterInput.fromJson(Map<String, dynamic> json) =>
      _$HotelLanguagesFilterInputFromJson(json);

  @JsonKey(
      name: 'operator',
      unknownEnumValue: HotelAttributesFilterOperatorEnum.artemisUnknown)
  HotelAttributesFilterOperatorEnum? kw$operator;

  List<String>? hotelLanguages;

  @override
  List<Object?> get props => [kw$operator, hotelLanguages];
  @override
  Map<String, dynamic> toJson() => _$HotelLanguagesFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HotelActivitiesFilterInput extends JsonSerializable with EquatableMixin {
  HotelActivitiesFilterInput({this.kw$operator, this.hotelActivities});

  factory HotelActivitiesFilterInput.fromJson(Map<String, dynamic> json) =>
      _$HotelActivitiesFilterInputFromJson(json);

  @JsonKey(
      name: 'operator',
      unknownEnumValue: HotelAttributesFilterOperatorEnum.artemisUnknown)
  HotelAttributesFilterOperatorEnum? kw$operator;

  List<String>? hotelActivities;

  @override
  List<Object?> get props => [kw$operator, hotelActivities];
  @override
  Map<String, dynamic> toJson() => _$HotelActivitiesFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HotelCategoryFilterInput extends JsonSerializable with EquatableMixin {
  HotelCategoryFilterInput(
      {this.hotelCategoriesRange, this.hotelOfferCategoriesRange});

  factory HotelCategoryFilterInput.fromJson(Map<String, dynamic> json) =>
      _$HotelCategoryFilterInputFromJson(json);

  HotelCategoryRangeFilterInput? hotelCategoriesRange;

  HotelCategoryRangeFilterInput? hotelOfferCategoriesRange;

  @override
  List<Object?> get props => [hotelCategoriesRange, hotelOfferCategoriesRange];
  @override
  Map<String, dynamic> toJson() => _$HotelCategoryFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HotelCategoryRangeFilterInput extends JsonSerializable
    with EquatableMixin {
  HotelCategoryRangeFilterInput({this.minCategory, this.maxCategory});

  factory HotelCategoryRangeFilterInput.fromJson(Map<String, dynamic> json) =>
      _$HotelCategoryRangeFilterInputFromJson(json);

  double? minCategory;

  double? maxCategory;

  @override
  List<Object?> get props => [minCategory, maxCategory];
  @override
  Map<String, dynamic> toJson() => _$HotelCategoryRangeFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HotelReferenceInput extends JsonSerializable with EquatableMixin {
  HotelReferenceInput({this.hotelCodes, this.codeType});

  factory HotelReferenceInput.fromJson(Map<String, dynamic> json) =>
      _$HotelReferenceInputFromJson(json);

  List<int>? hotelCodes;

  @JsonKey(unknownEnumValue: HotelReferenceCodeTypeEnum.artemisUnknown)
  HotelReferenceCodeTypeEnum? codeType;

  @override
  List<Object?> get props => [hotelCodes, codeType];
  @override
  Map<String, dynamic> toJson() => _$HotelReferenceInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlightDetailsFilterInput extends JsonSerializable with EquatableMixin {
  FlightDetailsFilterInput(
      {this.departureAirports,
      this.arrivalAirports,
      this.airlines,
      this.maxFlightDurationMinutes,
      this.maxNumberOfStops,
      this.cabinClassFilter});

  factory FlightDetailsFilterInput.fromJson(Map<String, dynamic> json) =>
      _$FlightDetailsFilterInputFromJson(json);

  InvertibleAirportCodeFilterInput? departureAirports;

  InvertibleAirportCodeFilterInput? arrivalAirports;

  FlightDetailsFilterAirlinesInput? airlines;

  int? maxFlightDurationMinutes;

  int? maxNumberOfStops;

  @JsonKey(unknownEnumValue: CabinClassFilterInput.artemisUnknown)
  List<CabinClassFilterInput?>? cabinClassFilter;

  @override
  List<Object?> get props => [
        departureAirports,
        arrivalAirports,
        airlines,
        maxFlightDurationMinutes,
        maxNumberOfStops,
        cabinClassFilter
      ];
  @override
  Map<String, dynamic> toJson() => _$FlightDetailsFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InvertibleAirportCodeFilterInput extends JsonSerializable
    with EquatableMixin {
  InvertibleAirportCodeFilterInput({this.airportCodes, required this.inverted});

  factory InvertibleAirportCodeFilterInput.fromJson(
          Map<String, dynamic> json) =>
      _$InvertibleAirportCodeFilterInputFromJson(json);

  List<String>? airportCodes;

  late bool inverted;

  @override
  List<Object?> get props => [airportCodes, inverted];
  @override
  Map<String, dynamic> toJson() =>
      _$InvertibleAirportCodeFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FlightDetailsFilterAirlinesInput extends JsonSerializable
    with EquatableMixin {
  FlightDetailsFilterAirlinesInput({this.airlineCodes, required this.inverted});

  factory FlightDetailsFilterAirlinesInput.fromJson(
          Map<String, dynamic> json) =>
      _$FlightDetailsFilterAirlinesInputFromJson(json);

  List<String>? airlineCodes;

  late bool inverted;

  @override
  List<Object?> get props => [airlineCodes, inverted];
  @override
  Map<String, dynamic> toJson() =>
      _$FlightDetailsFilterAirlinesInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestBaseBrandFilterInput extends JsonSerializable with EquatableMixin {
  RequestBaseBrandFilterInput({this.tourOperatorCodes, this.filterMode});

  factory RequestBaseBrandFilterInput.fromJson(Map<String, dynamic> json) =>
      _$RequestBaseBrandFilterInputFromJson(json);

  List<String>? tourOperatorCodes;

  @JsonKey(
      unknownEnumValue: RequestBaseBrandFilterFilterModeEnum.artemisUnknown)
  RequestBaseBrandFilterFilterModeEnum? filterMode;

  @override
  List<Object?> get props => [tourOperatorCodes, filterMode];
  @override
  Map<String, dynamic> toJson() => _$RequestBaseBrandFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TravelTypeFilterInput extends JsonSerializable with EquatableMixin {
  TravelTypeFilterInput({this.filterMode, required this.travelType});

  factory TravelTypeFilterInput.fromJson(Map<String, dynamic> json) =>
      _$TravelTypeFilterInputFromJson(json);

  @JsonKey(unknownEnumValue: TravelTypeFilterFilterModeEnum.artemisUnknown)
  TravelTypeFilterFilterModeEnum? filterMode;

  late String travelType;

  @override
  List<Object?> get props => [filterMode, travelType];
  @override
  Map<String, dynamic> toJson() => _$TravelTypeFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PagingGroupFilterInput extends JsonSerializable with EquatableMixin {
  PagingGroupFilterInput(
      {this.type,
      this.resultsTotal,
      this.showingResultsFrom,
      this.resultsPerPage});

  factory PagingGroupFilterInput.fromJson(Map<String, dynamic> json) =>
      _$PagingGroupFilterInputFromJson(json);

  String? type;

  int? resultsTotal;

  int? showingResultsFrom;

  int? resultsPerPage;

  @override
  List<Object?> get props =>
      [type, resultsTotal, showingResultsFrom, resultsPerPage];
  @override
  Map<String, dynamic> toJson() => _$PagingGroupFilterInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2x
    extends JsonSerializable with EquatableMixin {
  GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2x();

  factory GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2x.fromJson(
          Map<String, dynamic> json) =>
      _$GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2xFromJson(
          json);

  String? url;

  @override
  List<Object?> get props => [url];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2xToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetRoomOverview$Query$RoomOverview$Rooms$MainImage
    extends JsonSerializable with EquatableMixin {
  GetRoomOverview$Query$RoomOverview$Rooms$MainImage();

  factory GetRoomOverview$Query$RoomOverview$Rooms$MainImage.fromJson(
          Map<String, dynamic> json) =>
      _$GetRoomOverview$Query$RoomOverview$Rooms$MainImageFromJson(json);

  GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2x? default2x;

  @override
  List<Object?> get props => [default2x];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRoomOverview$Query$RoomOverview$Rooms$MainImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRoomOverview$Query$RoomOverview$Rooms$RoomView extends JsonSerializable
    with EquatableMixin {
  GetRoomOverview$Query$RoomOverview$Rooms$RoomView();

  factory GetRoomOverview$Query$RoomOverview$Rooms$RoomView.fromJson(
          Map<String, dynamic> json) =>
      _$GetRoomOverview$Query$RoomOverview$Rooms$RoomViewFromJson(json);

  String? name;

  String? localizedName;

  @override
  List<Object?> get props => [name, localizedName];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRoomOverview$Query$RoomOverview$Rooms$RoomViewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributes
    extends JsonSerializable with EquatableMixin {
  GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributes();

  factory GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributes.fromJson(
          Map<String, dynamic> json) =>
      _$GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributesFromJson(json);

  String? code;

  String? icon;

  String? name;

  String? localizedName;

  @override
  List<Object?> get props => [code, icon, name, localizedName];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRoomOverview$Query$RoomOverview$Rooms extends JsonSerializable
    with EquatableMixin {
  GetRoomOverview$Query$RoomOverview$Rooms();

  factory GetRoomOverview$Query$RoomOverview$Rooms.fromJson(
          Map<String, dynamic> json) =>
      _$GetRoomOverview$Query$RoomOverview$RoomsFromJson(json);

  GetRoomOverview$Query$RoomOverview$Rooms$MainImage? mainImage;

  String? providerId;

  String? name;

  String? localizedName;

  String? description;

  String? size;

  GetRoomOverview$Query$RoomOverview$Rooms$RoomView? roomView;

  List<GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributes?>? nbcAttributes;

  @override
  List<Object?> get props => [
        mainImage,
        providerId,
        name,
        localizedName,
        description,
        size,
        roomView,
        nbcAttributes
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRoomOverview$Query$RoomOverview$RoomsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRoomOverview$Query$RoomOverview extends JsonSerializable
    with EquatableMixin {
  GetRoomOverview$Query$RoomOverview();

  factory GetRoomOverview$Query$RoomOverview.fromJson(
          Map<String, dynamic> json) =>
      _$GetRoomOverview$Query$RoomOverviewFromJson(json);

  String? localizedDescription;

  String? description;

  List<GetRoomOverview$Query$RoomOverview$Rooms?>? rooms;

  @override
  List<Object?> get props => [localizedDescription, description, rooms];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRoomOverview$Query$RoomOverviewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRoomOverview$Query extends JsonSerializable with EquatableMixin {
  GetRoomOverview$Query();

  factory GetRoomOverview$Query.fromJson(Map<String, dynamic> json) =>
      _$GetRoomOverview$QueryFromJson(json);

  GetRoomOverview$Query$RoomOverview? roomOverview;

  @override
  List<Object?> get props => [roomOverview];
  @override
  Map<String, dynamic> toJson() => _$GetRoomOverview$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToFavorites$Mutation extends JsonSerializable with EquatableMixin {
  AddToFavorites$Mutation();

  factory AddToFavorites$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddToFavorites$MutationFromJson(json);

  bool? result;

  @override
  List<Object?> get props => [result];
  @override
  Map<String, dynamic> toJson() => _$AddToFavorites$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OfferInput extends JsonSerializable with EquatableMixin {
  OfferInput({required this.hash, required this.offerData});

  factory OfferInput.fromJson(Map<String, dynamic> json) =>
      _$OfferInputFromJson(json);

  late String hash;

  late Map<String, dynamic> offerData;

  @override
  List<Object?> get props => [hash, offerData];
  @override
  Map<String, dynamic> toJson() => _$OfferInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$Pagination extends JsonSerializable
    with EquatableMixin {
  ProductsQuery$Query$Products$Pagination();

  factory ProductsQuery$Query$Products$Pagination.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PaginationFromJson(json);

  late int resultsPerPage;

  late int resultsTotal;

  late int showingResultsFrom;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props =>
      [resultsPerPage, resultsTotal, showingResultsFrom, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PaginationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$Sections
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$Sections();

  factory ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$Sections.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$SectionsFromJson(
          json);

  String? name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$SectionsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$HotelContent$Description
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$HotelContent$Description();

  factory ProductsQuery$Query$Products$PackageProducts$HotelContent$Description.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContent$DescriptionFromJson(
          json);

  String? full;

  List<ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$Sections?>?
      sections;

  @override
  List<Object?> get props => [full, sections];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContent$DescriptionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$Sizes
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$Sizes();

  factory ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$Sizes.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$SizesFromJson(
          json);

  String? url;

  @override
  List<Object?> get props => [url];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$SizesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo();

  factory ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContent$LogoFromJson(
          json);

  List<ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$Sizes?>?
      sizes;

  @override
  List<Object?> get props => [sizes];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContent$LogoToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$HotelContent$Climate
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$HotelContent$Climate();

  factory ProductsQuery$Query$Products$PackageProducts$HotelContent$Climate.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContent$ClimateFromJson(
          json);

  int? avgAirTemp;

  int? avgWaterTemp;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [avgAirTemp, avgWaterTemp, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContent$ClimateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$HotelContent
    extends JsonSerializable with EquatableMixin, BaseImagesMixin {
  ProductsQuery$Query$Products$PackageProducts$HotelContent();

  factory ProductsQuery$Query$Products$PackageProducts$HotelContent.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContentFromJson(json);

  ProductsQuery$Query$Products$PackageProducts$HotelContent$Description?
      description;

  ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo? logo;

  String? crsCode;

  int? timeToAirport;

  double? distanceToAirport;

  double? distanceToBeach;

  ProductsQuery$Query$Products$PackageProducts$HotelContent$Climate? climate;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        mainImage,
        images,
        $$typename,
        description,
        logo,
        crsCode,
        timeToAirport,
        distanceToAirport,
        distanceToBeach,
        climate
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelContentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$ShipContent
    extends JsonSerializable with EquatableMixin, BaseShipImagesMixin {
  ProductsQuery$Query$Products$PackageProducts$ShipContent();

  factory ProductsQuery$Query$Products$PackageProducts$ShipContent.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$ShipContentFromJson(json);

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [mainImage, images, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$ShipContentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$TopOffer
    extends JsonSerializable
    with EquatableMixin, TsbobCollectionOfferFieldsMixin {
  ProductsQuery$Query$Products$PackageProducts$TopOffer();

  factory ProductsQuery$Query$Products$PackageProducts$TopOffer.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$TopOfferFromJson(json);

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        sourceCode,
        hash,
        isInFavorites,
        hotelOfferCategory,
        lengthOfStay,
        offerStartDate,
        hotelContentId,
        tourOperator,
        offerStart,
        offerEnd,
        rooms,
        price,
        departure,
        kw$return,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$TopOfferToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$Price
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$Price();

  factory ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$Price.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$PriceFromJson(
          json);

  late double amount;

  double? perPersonAmount;

  late double taxAmount;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [amount, perPersonAmount, taxAmount, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$PriceToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$AlternativeOffer
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$AlternativeOffer();

  factory ProductsQuery$Query$Products$PackageProducts$AlternativeOffer.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$AlternativeOfferFromJson(
          json);

  String? sourceCode;

  ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$Price? price;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [sourceCode, price, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$AlternativeOfferToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$References
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$References();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$References.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$ReferencesFromJson(
          json);

  List<int>? iffCodes;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [iffCodes, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$ReferencesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributes
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributes();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributes.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributesFromJson(
          json);

  String? label;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [label, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributesFromJson(
          json);

  List<ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributes>?
      hotelAttributes;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [hotelAttributes, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCode
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCode();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCode.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCodeFromJson(
          json);

  late double latitude;

  late double longitude;

  @override
  List<Object?> get props => [latitude, longitude];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCodeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Region
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Region();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Region.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$RegionFromJson(
          json);

  String? name;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$RegionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Country
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Country();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Country.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$CountryFromJson(
          json);

  String? name;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$CountryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$Location$City
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$Location$City();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$Location$City.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$CityFromJson(
          json);

  String? name;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$CityToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Climate
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Climate();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Climate.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$ClimateFromJson(
          json);

  int? avgAirTemp;

  int? avgWaterTemp;

  String? temperatureUnit;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props =>
      [avgAirTemp, avgWaterTemp, temperatureUnit, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$ClimateToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$Location
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$Location();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$Location.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$LocationFromJson(
          json);

  ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCode? geoCode;

  ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Region? region;

  late ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Country
      country;

  ProductsQuery$Query$Products$PackageProducts$Hotel$Location$City? city;

  ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Climate? climate;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props =>
      [geoCode, region, country, city, climate, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$Rating
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$Rating();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$Rating.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$RatingFromJson(
          json);

  String? name;

  late double value;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, value, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$RatingToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$RatingsFromJson(
          json);

  @JsonKey(unknownEnumValue: RatingProvider.artemisUnknown)
  RatingProvider? provider;

  String? providerProductId;

  List<ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$Rating>?
      rating;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [provider, providerProductId, rating, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$Hotel$RatingsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts$Hotel
    extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts$Hotel();

  factory ProductsQuery$Query$Products$PackageProducts$Hotel.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelFromJson(json);

  String? name;

  late int giataId;
  String? description;
  ProductsQuery$Query$Products$PackageProducts$Hotel$References? references;

  ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes?
      hotelAttributes;

  double? category;

  ProductsQuery$Query$Products$PackageProducts$Hotel$Location? location;

  List<ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings>? ratings;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        name,
        giataId,
        description,
        references,
        hotelAttributes,
        category,
        location,
        ratings,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProducts$HotelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products$PackageProducts extends JsonSerializable
    with EquatableMixin {
  ProductsQuery$Query$Products$PackageProducts();

  factory ProductsQuery$Query$Products$PackageProducts.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsQuery$Query$Products$PackageProductsFromJson(json);

  ProductsQuery$Query$Products$PackageProducts$HotelContent? hotelContent;

  ProductsQuery$Query$Products$PackageProducts$ShipContent? shipContent;

  late ProductsQuery$Query$Products$PackageProducts$TopOffer topOffer;

  ProductsQuery$Query$Products$PackageProducts$AlternativeOffer?
      alternativeOffer;

  ProductsQuery$Query$Products$PackageProducts$Hotel? hotel;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        hotelContent,
        shipContent,
        topOffer,
        alternativeOffer,
        hotel,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductsQuery$Query$Products$PackageProductsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query$Products extends JsonSerializable
    with EquatableMixin {
  ProductsQuery$Query$Products();

  factory ProductsQuery$Query$Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsQuery$Query$ProductsFromJson(json);

  ProductsQuery$Query$Products$Pagination? pagination;

  List<ProductsQuery$Query$Products$PackageProducts>? packageProducts;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [pagination, packageProducts, $$typename];
  @override
  Map<String, dynamic> toJson() => _$ProductsQuery$Query$ProductsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsQuery$Query extends JsonSerializable with EquatableMixin {
  ProductsQuery$Query();

  factory ProductsQuery$Query.fromJson(Map<String, dynamic> json) =>
      _$ProductsQuery$QueryFromJson(json);

  ProductsQuery$Query$Products? products;

  @override
  List<Object?> get props => [products];
  @override
  Map<String, dynamic> toJson() => _$ProductsQuery$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$TourOperator extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFieldsMixin$TourOperator();

  factory TsbobCollectionOfferFieldsMixin$TourOperator.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$TourOperatorFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$TourOperatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$OfferStart extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFieldsMixin$OfferStart();

  factory TsbobCollectionOfferFieldsMixin$OfferStart.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$OfferStartFromJson(json);

  late DateTime date;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$OfferStartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$OfferEnd extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFieldsMixin$OfferEnd();

  factory TsbobCollectionOfferFieldsMixin$OfferEnd.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$OfferEndFromJson(json);

  late DateTime date;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$OfferEndToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributes
    extends JsonSerializable with EquatableMixin {
  TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributes();

  factory TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributes.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributesFromJson(json);

  String? code;

  String? name;

  String? icon;

  String? localizedName;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [code, name, icon, localizedName, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$Rooms$Room$Board extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFieldsMixin$Rooms$Room$Board();

  factory TsbobCollectionOfferFieldsMixin$Rooms$Room$Board.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$Rooms$Room$BoardFromJson(json);

  String? boardKey;

  String? label;

  String? code;

  String? opCode;

  String? name;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [boardKey, label, code, opCode, name, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$Rooms$Room$BoardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$Rooms$Room$Codes extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFieldsMixin$Rooms$Room$Codes();

  factory TsbobCollectionOfferFieldsMixin$Rooms$Room$Codes.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$Rooms$Room$CodesFromJson(json);

  String? label;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [label, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$Rooms$Room$CodesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$Rooms$Room extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFieldsMixin$Rooms$Room();

  factory TsbobCollectionOfferFieldsMixin$Rooms$Room.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$Rooms$RoomFromJson(json);

  String? name;

  String? localizedName;

  String? opCode;

  List<TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributes?>?
      nbcAttributes;

  TsbobCollectionOfferFieldsMixin$Rooms$Room$Board? board;

  List<TsbobCollectionOfferFieldsMixin$Rooms$Room$Codes>? codes;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props =>
      [name, localizedName, opCode, nbcAttributes, board, codes, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$Rooms$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$Rooms extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFieldsMixin$Rooms();

  factory TsbobCollectionOfferFieldsMixin$Rooms.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$RoomsFromJson(json);

  List<TsbobCollectionOfferFieldsMixin$Rooms$Room>? room;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [room, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$RoomsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$Price$DiscountInfo
    extends JsonSerializable with EquatableMixin, DiscountInfoFieldsMixin {
  TsbobCollectionOfferFieldsMixin$Price$DiscountInfo();

  factory TsbobCollectionOfferFieldsMixin$Price$DiscountInfo.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$Price$DiscountInfoFromJson(json);

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        fullAmount,
        fullDiscountPercentage,
        discountAmount,
        discountReason,
        discountAmountPerNight,
        perNightFullAmount,
        perNightDiscountPercentage,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$Price$DiscountInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$Price extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFieldsMixin$Price();

  factory TsbobCollectionOfferFieldsMixin$Price.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$PriceFromJson(json);

  late double amount;

  double? perPersonAmount;

  late double perNightAmount;

  late double taxAmount;

  TsbobCollectionOfferFieldsMixin$Price$DiscountInfo? discountInfo;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        amount,
        perPersonAmount,
        perNightAmount,
        taxAmount,
        discountInfo,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$PriceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$Departure extends JsonSerializable
    with EquatableMixin, TsbobCollectionOfferFlightsMixin {
  TsbobCollectionOfferFieldsMixin$Departure();

  factory TsbobCollectionOfferFieldsMixin$Departure.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$DepartureFromJson(json);

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        departureAirport,
        arrivalAirport,
        airline,
        arrivalDateTime,
        departureDateTime,
        duration,
        stopOver,
        flightSegments,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$DepartureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFieldsMixin$Kw$return extends JsonSerializable
    with EquatableMixin, TsbobCollectionOfferFlightsMixin {
  TsbobCollectionOfferFieldsMixin$Kw$return();

  factory TsbobCollectionOfferFieldsMixin$Kw$return.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFieldsMixin$Kw$returnFromJson(json);

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        departureAirport,
        arrivalAirport,
        airline,
        arrivalDateTime,
        departureDateTime,
        duration,
        stopOver,
        flightSegments,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFieldsMixin$Kw$returnToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$DepartureAirport extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$DepartureAirport();

  factory TsbobCollectionOfferFlightsMixin$DepartureAirport.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$DepartureAirportFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$DepartureAirportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$ArrivalAirport extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$ArrivalAirport();

  factory TsbobCollectionOfferFlightsMixin$ArrivalAirport.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$ArrivalAirportFromJson(json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$ArrivalAirportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$Airline extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$Airline();

  factory TsbobCollectionOfferFlightsMixin$Airline.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$AirlineFromJson(json);

  String? code;

  String? name;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [code, name, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$AirlineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$ArrivalDateTime extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$ArrivalDateTime();

  factory TsbobCollectionOfferFlightsMixin$ArrivalDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$ArrivalDateTimeFromJson(json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$ArrivalDateTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$DepartureDateTime
    extends JsonSerializable with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$DepartureDateTime();

  factory TsbobCollectionOfferFlightsMixin$DepartureDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$DepartureDateTimeFromJson(json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$DepartureDateTimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTime
    extends JsonSerializable with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTime();

  factory TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTimeFromJson(
          json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTimeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTime
    extends JsonSerializable with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTime();

  factory TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTime.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTimeFromJson(
          json);

  late DateTime date;

  String? time;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [date, time, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTimeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirport
    extends JsonSerializable with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirport();

  factory TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirport.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirportFromJson(
          json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirportToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirport
    extends JsonSerializable with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirport();

  factory TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirport.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirportFromJson(
          json);

  String? name;

  String? code;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [name, code, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirportToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$FlightSegments$Airline
    extends JsonSerializable with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$FlightSegments$Airline();

  factory TsbobCollectionOfferFlightsMixin$FlightSegments$Airline.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegments$AirlineFromJson(json);

  String? code;

  String? name;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [code, name, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegments$AirlineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TsbobCollectionOfferFlightsMixin$FlightSegments extends JsonSerializable
    with EquatableMixin {
  TsbobCollectionOfferFlightsMixin$FlightSegments();

  factory TsbobCollectionOfferFlightsMixin$FlightSegments.fromJson(
          Map<String, dynamic> json) =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegmentsFromJson(json);

  String? flightNumber;

  TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTime?
      arrivalDateTime;

  TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTime?
      departureDateTime;

  TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirport?
      departureAirport;

  TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirport?
      arrivalAirport;

  TsbobCollectionOfferFlightsMixin$FlightSegments$Airline? airline;

  int? duration;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        flightNumber,
        arrivalDateTime,
        departureDateTime,
        departureAirport,
        arrivalAirport,
        airline,
        duration,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$TsbobCollectionOfferFlightsMixin$FlightSegmentsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseImagesMixin$MainImage$Preview extends JsonSerializable
    with EquatableMixin {
  BaseImagesMixin$MainImage$Preview();

  factory BaseImagesMixin$MainImage$Preview.fromJson(
          Map<String, dynamic> json) =>
      _$BaseImagesMixin$MainImage$PreviewFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseImagesMixin$MainImage$PreviewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseImagesMixin$MainImage$Kw$default extends JsonSerializable
    with EquatableMixin {
  BaseImagesMixin$MainImage$Kw$default();

  factory BaseImagesMixin$MainImage$Kw$default.fromJson(
          Map<String, dynamic> json) =>
      _$BaseImagesMixin$MainImage$Kw$defaultFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseImagesMixin$MainImage$Kw$defaultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseImagesMixin$MainImage$Default2x extends JsonSerializable
    with EquatableMixin {
  BaseImagesMixin$MainImage$Default2x();

  factory BaseImagesMixin$MainImage$Default2x.fromJson(
          Map<String, dynamic> json) =>
      _$BaseImagesMixin$MainImage$Default2xFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseImagesMixin$MainImage$Default2xToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseImagesMixin$MainImage extends JsonSerializable with EquatableMixin {
  BaseImagesMixin$MainImage();

  factory BaseImagesMixin$MainImage.fromJson(Map<String, dynamic> json) =>
      _$BaseImagesMixin$MainImageFromJson(json);

  BaseImagesMixin$MainImage$Preview? preview;

  @JsonKey(name: 'default')
  BaseImagesMixin$MainImage$Kw$default? kw$default;

  BaseImagesMixin$MainImage$Default2x? default2x;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [preview, kw$default, default2x, $$typename];
  @override
  Map<String, dynamic> toJson() => _$BaseImagesMixin$MainImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseImagesMixin$Images$Original$Size extends JsonSerializable
    with EquatableMixin {
  BaseImagesMixin$Images$Original$Size();

  factory BaseImagesMixin$Images$Original$Size.fromJson(
          Map<String, dynamic> json) =>
      _$BaseImagesMixin$Images$Original$SizeFromJson(json);

  int? width;

  int? height;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [width, height, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseImagesMixin$Images$Original$SizeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseImagesMixin$Images$Original extends JsonSerializable
    with EquatableMixin {
  BaseImagesMixin$Images$Original();

  factory BaseImagesMixin$Images$Original.fromJson(Map<String, dynamic> json) =>
      _$BaseImagesMixin$Images$OriginalFromJson(json);

  BaseImagesMixin$Images$Original$Size? size;

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [size, url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseImagesMixin$Images$OriginalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseImagesMixin$Images$Preview extends JsonSerializable
    with EquatableMixin {
  BaseImagesMixin$Images$Preview();

  factory BaseImagesMixin$Images$Preview.fromJson(Map<String, dynamic> json) =>
      _$BaseImagesMixin$Images$PreviewFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() => _$BaseImagesMixin$Images$PreviewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseImagesMixin$Images$Kw$default extends JsonSerializable
    with EquatableMixin {
  BaseImagesMixin$Images$Kw$default();

  factory BaseImagesMixin$Images$Kw$default.fromJson(
          Map<String, dynamic> json) =>
      _$BaseImagesMixin$Images$Kw$defaultFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseImagesMixin$Images$Kw$defaultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseImagesMixin$Images$Default2x extends JsonSerializable
    with EquatableMixin {
  BaseImagesMixin$Images$Default2x();

  factory BaseImagesMixin$Images$Default2x.fromJson(
          Map<String, dynamic> json) =>
      _$BaseImagesMixin$Images$Default2xFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseImagesMixin$Images$Default2xToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseImagesMixin$Images extends JsonSerializable with EquatableMixin {
  BaseImagesMixin$Images();

  factory BaseImagesMixin$Images.fromJson(Map<String, dynamic> json) =>
      _$BaseImagesMixin$ImagesFromJson(json);

  BaseImagesMixin$Images$Original? original;

  BaseImagesMixin$Images$Preview? preview;

  @JsonKey(name: 'default')
  BaseImagesMixin$Images$Kw$default? kw$default;

  BaseImagesMixin$Images$Default2x? default2x;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props =>
      [original, preview, kw$default, default2x, $$typename];
  @override
  Map<String, dynamic> toJson() => _$BaseImagesMixin$ImagesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseShipImagesMixin$MainImage$Preview extends JsonSerializable
    with EquatableMixin {
  BaseShipImagesMixin$MainImage$Preview();

  factory BaseShipImagesMixin$MainImage$Preview.fromJson(
          Map<String, dynamic> json) =>
      _$BaseShipImagesMixin$MainImage$PreviewFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseShipImagesMixin$MainImage$PreviewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseShipImagesMixin$MainImage$Kw$default extends JsonSerializable
    with EquatableMixin {
  BaseShipImagesMixin$MainImage$Kw$default();

  factory BaseShipImagesMixin$MainImage$Kw$default.fromJson(
          Map<String, dynamic> json) =>
      _$BaseShipImagesMixin$MainImage$Kw$defaultFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseShipImagesMixin$MainImage$Kw$defaultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseShipImagesMixin$MainImage$Default2x extends JsonSerializable
    with EquatableMixin {
  BaseShipImagesMixin$MainImage$Default2x();

  factory BaseShipImagesMixin$MainImage$Default2x.fromJson(
          Map<String, dynamic> json) =>
      _$BaseShipImagesMixin$MainImage$Default2xFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseShipImagesMixin$MainImage$Default2xToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseShipImagesMixin$MainImage extends JsonSerializable
    with EquatableMixin {
  BaseShipImagesMixin$MainImage();

  factory BaseShipImagesMixin$MainImage.fromJson(Map<String, dynamic> json) =>
      _$BaseShipImagesMixin$MainImageFromJson(json);

  BaseShipImagesMixin$MainImage$Preview? preview;

  @JsonKey(name: 'default')
  BaseShipImagesMixin$MainImage$Kw$default? kw$default;

  BaseShipImagesMixin$MainImage$Default2x? default2x;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [preview, kw$default, default2x, $$typename];
  @override
  Map<String, dynamic> toJson() => _$BaseShipImagesMixin$MainImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseShipImagesMixin$Images$Preview extends JsonSerializable
    with EquatableMixin {
  BaseShipImagesMixin$Images$Preview();

  factory BaseShipImagesMixin$Images$Preview.fromJson(
          Map<String, dynamic> json) =>
      _$BaseShipImagesMixin$Images$PreviewFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseShipImagesMixin$Images$PreviewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseShipImagesMixin$Images$Kw$default extends JsonSerializable
    with EquatableMixin {
  BaseShipImagesMixin$Images$Kw$default();

  factory BaseShipImagesMixin$Images$Kw$default.fromJson(
          Map<String, dynamic> json) =>
      _$BaseShipImagesMixin$Images$Kw$defaultFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseShipImagesMixin$Images$Kw$defaultToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseShipImagesMixin$Images$Default2x extends JsonSerializable
    with EquatableMixin {
  BaseShipImagesMixin$Images$Default2x();

  factory BaseShipImagesMixin$Images$Default2x.fromJson(
          Map<String, dynamic> json) =>
      _$BaseShipImagesMixin$Images$Default2xFromJson(json);

  String? url;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [url, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$BaseShipImagesMixin$Images$Default2xToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseShipImagesMixin$Images extends JsonSerializable with EquatableMixin {
  BaseShipImagesMixin$Images();

  factory BaseShipImagesMixin$Images.fromJson(Map<String, dynamic> json) =>
      _$BaseShipImagesMixin$ImagesFromJson(json);

  BaseShipImagesMixin$Images$Preview? preview;

  @JsonKey(name: 'default')
  BaseShipImagesMixin$Images$Kw$default? kw$default;

  BaseShipImagesMixin$Images$Default2x? default2x;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [preview, kw$default, default2x, $$typename];
  @override
  Map<String, dynamic> toJson() => _$BaseShipImagesMixin$ImagesToJson(this);
}

enum BookingTypeEnum {
  @JsonValue('PACKAGE')
  package,
  @JsonValue('HOTEL_ONLY')
  hotelOnly,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum OfferOfferIncludesEnum {
  @JsonValue('ENTRANCE')
  entrance,
  @JsonValue('EXCURSION')
  excursion,
  @JsonValue('FREE_CANCELLATION')
  freeCancellation,
  @JsonValue('FREE_REBOOKING')
  freeRebooking,
  @JsonValue('GOLF_PASS')
  golfPass,
  @JsonValue('RAIL_AND_FLY')
  railAndFly,
  @JsonValue('RENTAL_CAR')
  rentalCar,
  @JsonValue('SKI_PASS')
  skiPass,
  @JsonValue('SPORT')
  sport,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum DayOfWeekFilterInput {
  @JsonValue('SUN')
  sun,
  @JsonValue('MON')
  mon,
  @JsonValue('TUE')
  tue,
  @JsonValue('WED')
  wed,
  @JsonValue('THU')
  thu,
  @JsonValue('FRI')
  fri,
  @JsonValue('SAT')
  sat,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum TravelPeriodFilterDurationKindEnum {
  @JsonValue('HOTEL')
  hotel,
  @JsonValue('FLIGHT')
  flight,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum RatingFilterCodeEnum {
  @JsonValue('averageRating')
  averageRating,
  @JsonValue('ratingCount')
  ratingCount,
  @JsonValue('recommendationRate')
  recommendationRate,
  @JsonValue('ratingBusiness')
  ratingBusiness,
  @JsonValue('ratingCouple')
  ratingCouple,
  @JsonValue('ratingFamily')
  ratingFamily,
  @JsonValue('ratingSolo')
  ratingSolo,
  @JsonValue('scoreBeachAll')
  scoreBeachAll,
  @JsonValue('scoreFoodAll')
  scoreFoodAll,
  @JsonValue('scoreLocationAll')
  scoreLocationAll,
  @JsonValue('scoreRoomAll')
  scoreRoomAll,
  @JsonValue('scoreServiceAll')
  scoreServiceAll,
  @JsonValue('scoreFoodBusiness')
  scoreFoodBusiness,
  @JsonValue('scoreLocationBusiness')
  scoreLocationBusiness,
  @JsonValue('scoreRoomBusiness')
  scoreRoomBusiness,
  @JsonValue('scoreServiceBusiness')
  scoreServiceBusiness,
  @JsonValue('scoreBeachCouple')
  scoreBeachCouple,
  @JsonValue('scoreFoodCouple')
  scoreFoodCouple,
  @JsonValue('scoreLocationCouple')
  scoreLocationCouple,
  @JsonValue('scoreRoomCouple')
  scoreRoomCouple,
  @JsonValue('scoreServiceCouple')
  scoreServiceCouple,
  @JsonValue('scoreBeachFamily')
  scoreBeachFamily,
  @JsonValue('scoreFoodFamily')
  scoreFoodFamily,
  @JsonValue('scoreLocationFamily')
  scoreLocationFamily,
  @JsonValue('scoreRoomFamily')
  scoreRoomFamily,
  @JsonValue('scoreServiceFamily')
  scoreServiceFamily,
  @JsonValue('scoreBeachSolo')
  scoreBeachSolo,
  @JsonValue('scoreFoodSolo')
  scoreFoodSolo,
  @JsonValue('scoreLocationSolo')
  scoreLocationSolo,
  @JsonValue('scoreRoomSolo')
  scoreRoomSolo,
  @JsonValue('scoreServiceSolo')
  scoreServiceSolo,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum RatingFilterOperatorEnum {
  @JsonValue('EQ')
  eq,
  @JsonValue('LT')
  lt,
  @JsonValue('GT')
  gt,
  @JsonValue('LE')
  le,
  @JsonValue('GE')
  ge,
  @JsonValue('NE')
  ne,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum RatingProvider {
  @JsonValue('default')
  kw$default,
  @JsonValue('trustyou')
  trustyou,
  @JsonValue('tripadvisor')
  tripadvisor,
  @JsonValue('HolidayCheck')
  holidayCheck,
  @JsonValue('noop_provider')
  noopProvider,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum HotelAttributesFilterOperatorEnum {
  @JsonValue('AND')
  and,
  @JsonValue('OR')
  or,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum HotelReferenceCodeTypeEnum {
  @JsonValue('GIATA')
  giata,
  @JsonValue('IFF')
  iff,
  @JsonValue('OPIC')
  opic,
  @JsonValue('DRV')
  drv,
  @JsonValue('ICMS_ID')
  icmsId,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum CabinClassFilterInput {
  @JsonValue('F')
  f,
  @JsonValue('J')
  j,
  @JsonValue('W')
  w,
  @JsonValue('Y')
  y,
  @JsonValue('U')
  u,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum RequestBaseBrandFilterFilterModeEnum {
  @JsonValue('INCLUDE')
  include,
  @JsonValue('EXCLUDE')
  exclude,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum TravelTypeFilterFilterModeEnum {
  @JsonValue('INCLUDE')
  include,
  @JsonValue('EXCLUDE')
  exclude,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum PackageOfferIncludesEnum {
  @JsonValue('ENTRANCE')
  entrance,
  @JsonValue('EXCURSION')
  excursion,
  @JsonValue('FREE_CANCELLATION')
  freeCancellation,
  @JsonValue('FREE_REBOOKING')
  freeRebooking,
  @JsonValue('GOLF_PASS')
  golfPass,
  @JsonValue('RAIL_AND_FLY')
  railAndFly,
  @JsonValue('RENTAL_CAR')
  rentalCar,
  @JsonValue('SKI_PASS')
  skiPass,
  @JsonValue('SPORT')
  sport,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum FilterSortingOrderEnum {
  @JsonValue('PRICE_ASC')
  priceAsc,
  @JsonValue('PRICE_DESC')
  priceDesc,
  @JsonValue('LENGTH_OF_STAY_ASC')
  lengthOfStayAsc,
  @JsonValue('LENGTH_OF_STAY_DESC')
  lengthOfStayDesc,
  @JsonValue('START_DATE_ASC')
  startDateAsc,
  @JsonValue('START_DATE_DESC')
  startDateDesc,
  @JsonValue('DESTINATION_NAME_ASC')
  destinationNameAsc,
  @JsonValue('DESTINATION_NAME_DESC')
  destinationNameDesc,
  @JsonValue('HOTEL_NAME_ASC')
  hotelNameAsc,
  @JsonValue('HOTEL_NAME_DESC')
  hotelNameDesc,
  @JsonValue('HOTEL_CATEGORY_ASC')
  hotelCategoryAsc,
  @JsonValue('HOTEL_CATEGORY_DESC')
  hotelCategoryDesc,
  @JsonValue('HOTEL_RATING_ASC')
  hotelRatingAsc,
  @JsonValue('HOTEL_RATING_DESC')
  hotelRatingDesc,
  @JsonValue('DURATION_ASC')
  durationAsc,
  @JsonValue('DURATION_DESC')
  durationDesc,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
final GLOBAL_TYPES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'globalTypes'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'options'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'formDataRequest'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'msgTypes'),
                        value: EnumValueNode(
                            name: NameNode(value: 'GLOBAL_TYPES')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'globalTypesStatic'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'label'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'data'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'icon'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'hidden'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'children'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'label'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'value'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GlobalTypesQuery
    extends GraphQLQuery<GlobalTypes$Query, JsonSerializable> {
  GlobalTypesQuery();

  @override
  final DocumentNode document = GLOBAL_TYPES_QUERY_DOCUMENT;

  @override
  final String operationName = 'globalTypes';

  @override
  List<Object?> get props => [document, operationName];
  @override
  GlobalTypes$Query parse(Map<String, dynamic> json) =>
      GlobalTypes$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetHotelsAutocompleteArguments extends JsonSerializable
    with EquatableMixin {
  GetHotelsAutocompleteArguments(
      {required this.keyword, required this.bookingType});

  @override
  factory GetHotelsAutocompleteArguments.fromJson(Map<String, dynamic> json) =>
      _$GetHotelsAutocompleteArgumentsFromJson(json);

  late String keyword;

  @JsonKey(unknownEnumValue: BookingTypeEnum.artemisUnknown)
  late BookingTypeEnum bookingType;

  @override
  List<Object?> get props => [keyword, bookingType];
  @override
  Map<String, dynamic> toJson() => _$GetHotelsAutocompleteArgumentsToJson(this);
}

final GET_HOTELS_AUTOCOMPLETE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getHotelsAutocomplete'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'keyword')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'bookingType')),
            type: NamedTypeNode(
                name: NameNode(value: 'BookingTypeEnum'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'hotelSearch'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'hotelSearchRequest'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'query'),
                        value: VariableNode(name: NameNode(value: 'keyword'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'bookingType'),
                        value:
                            VariableNode(name: NameNode(value: 'bookingType')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: NameNode(value: 'label'),
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'references'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'giataCodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'hotelIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'opicCodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'iffCodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'drvCodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetHotelsAutocompleteQuery extends GraphQLQuery<
    GetHotelsAutocomplete$Query, GetHotelsAutocompleteArguments> {
  GetHotelsAutocompleteQuery({required this.variables});

  @override
  final DocumentNode document = GET_HOTELS_AUTOCOMPLETE_QUERY_DOCUMENT;

  @override
  final String operationName = 'getHotelsAutocomplete';

  @override
  final GetHotelsAutocompleteArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetHotelsAutocomplete$Query parse(Map<String, dynamic> json) =>
      GetHotelsAutocomplete$Query.fromJson(json);
}

final FAVORITES_INFO_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'favoritesInfo'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'favorites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'count'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'ownIdentity'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'favoriteIds'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class FavoritesInfoQuery
    extends GraphQLQuery<FavoritesInfo$Query, JsonSerializable> {
  FavoritesInfoQuery();

  @override
  final DocumentNode document = FAVORITES_INFO_QUERY_DOCUMENT;

  @override
  final String operationName = 'favoritesInfo';

  @override
  List<Object?> get props => [document, operationName];
  @override
  FavoritesInfo$Query parse(Map<String, dynamic> json) =>
      FavoritesInfo$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DestinationsArguments extends JsonSerializable with EquatableMixin {
  DestinationsArguments({required this.bookingType});

  @override
  factory DestinationsArguments.fromJson(Map<String, dynamic> json) =>
      _$DestinationsArgumentsFromJson(json);

  @JsonKey(unknownEnumValue: BookingTypeEnum.artemisUnknown)
  late BookingTypeEnum bookingType;

  @override
  List<Object?> get props => [bookingType];
  @override
  Map<String, dynamic> toJson() => _$DestinationsArgumentsToJson(this);
}

final DESTINATIONS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'destinations'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'bookingType')),
            type: NamedTypeNode(
                name: NameNode(value: 'BookingTypeEnum'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'options'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'formDataRequest'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'bookingType'),
                        value:
                            VariableNode(name: NameNode(value: 'bookingType')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'destinations'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'label'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'children'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'label'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'value'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'children'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'label'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'value'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'children'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'label'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'value'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'children'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'label'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(value: 'value'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class DestinationsQuery
    extends GraphQLQuery<Destinations$Query, DestinationsArguments> {
  DestinationsQuery({required this.variables});

  @override
  final DocumentNode document = DESTINATIONS_QUERY_DOCUMENT;

  @override
  final String operationName = 'destinations';

  @override
  final DestinationsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Destinations$Query parse(Map<String, dynamic> json) =>
      Destinations$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetHotelReviewsArguments extends JsonSerializable with EquatableMixin {
  GetHotelReviewsArguments({required this.filter, required this.paging});

  @override
  factory GetHotelReviewsArguments.fromJson(Map<String, dynamic> json) =>
      _$GetHotelReviewsArgumentsFromJson(json);

  late ReviewsFilter filter;

  late PagingInput paging;

  @override
  List<Object?> get props => [filter, paging];
  @override
  Map<String, dynamic> toJson() => _$GetHotelReviewsArgumentsToJson(this);
}

final GET_HOTEL_REVIEWS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getHotelReviews'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'filter')),
            type: NamedTypeNode(
                name: NameNode(value: 'ReviewsFilter'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'paging')),
            type: NamedTypeNode(
                name: NameNode(value: 'PagingInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'hotelRatingGroupCodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'filter'),
                  value: VariableNode(name: NameNode(value: 'filter'))),
              ArgumentNode(
                  name: NameNode(value: 'paging'),
                  value: VariableNode(name: NameNode(value: 'paging')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'resultsTotal'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'list'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'ratingAllOver'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'headline'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'firstName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'age'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'monthOfTravel'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'yearOfTravel'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'travelledAs'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'conclusion'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'ratingId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'fullReviewUrl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetHotelReviewsQuery
    extends GraphQLQuery<GetHotelReviews$Query, GetHotelReviewsArguments> {
  GetHotelReviewsQuery({required this.variables});

  @override
  final DocumentNode document = GET_HOTEL_REVIEWS_QUERY_DOCUMENT;

  @override
  final String operationName = 'getHotelReviews';

  @override
  final GetHotelReviewsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetHotelReviews$Query parse(Map<String, dynamic> json) =>
      GetHotelReviews$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetOfferListArguments extends JsonSerializable with EquatableMixin {
  GetOfferListArguments(
      {required this.packageOfferRequest, this.includeRoomDescription});

  @override
  factory GetOfferListArguments.fromJson(Map<String, dynamic> json) =>
      _$GetOfferListArgumentsFromJson(json);

  late PackageOfferRequestInput packageOfferRequest;

  final bool? includeRoomDescription;

  @override
  List<Object?> get props => [packageOfferRequest, includeRoomDescription];
  @override
  Map<String, dynamic> toJson() => _$GetOfferListArgumentsToJson(this);
}

final GET_OFFER_LIST_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getOfferList'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable:
                VariableNode(name: NameNode(value: 'packageOfferRequest')),
            type: NamedTypeNode(
                name: NameNode(value: 'PackageOfferRequestInput'),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable:
                VariableNode(name: NameNode(value: 'includeRoomDescription')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: false),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'productOffers'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'packageOfferRequest'),
                  value: VariableNode(
                      name: NameNode(value: 'packageOfferRequest')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'hotels'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'offers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'detailOfferData'),
                              directives: []),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'pagination'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'resultsTotal'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'detailOfferData'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Offer'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'externalId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'hash'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'hotelContentId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'hotelOfferCategory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'isInFavorites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'productCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'lengthOfStay'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'sourceCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'amount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'perPersonAmount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'perNightAmount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'taxAmount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'currency'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'refId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'discountInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'discountInfoFields'),
                        directives: []),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'departure'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'departureAirport'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'arrivalAirport'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'airline'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'arrivalDateTime'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'date'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'departureDateTime'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'date'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'flightKey'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flightCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flightID'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flightLabel'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flightNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'duration'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'priority'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'stopOver'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'distance'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'bookingCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'bookingClass'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flightSegments'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'flightNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'arrivalDateTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'date'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'time'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'departureDateTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'date'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'time'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'departureAirport'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'arrivalAirport'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'airline'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'duration'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'distance'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'bookingClass'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'return'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'departureAirport'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'arrivalAirport'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'airline'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'arrivalDateTime'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'date'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'departureDateTime'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'date'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'flightKey'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flightCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flightID'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flightLabel'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flightNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'duration'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'priority'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'stopOver'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'distance'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'bookingCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'bookingClass'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flightSegments'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'flightNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'arrivalDateTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'date'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'time'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'departureDateTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'date'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'time'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'departureAirport'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'arrivalAirport'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'airline'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'duration'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'distance'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'bookingClass'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'tourOperator'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'code'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'offerStart'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'date'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'offerEnd'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'date'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'rooms'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'room'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'board'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'label'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'description'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'opCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'localizedName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'opCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [
                          DirectiveNode(
                              name: NameNode(value: 'include'),
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'if'),
                                    value: VariableNode(
                                        name: NameNode(
                                            value: 'includeRoomDescription')))
                              ])
                        ],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'nbcAttributes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'icon'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'localizedName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'extras'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'type'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'included'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'extraBeds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'priceByUnit'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'views'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'label'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'roomKey'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'mainImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'proxyImageForSize'),
                              alias: NameNode(value: 'preview'),
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'width'),
                                    value: IntValueNode(value: '10')),
                                ArgumentNode(
                                    name: NameNode(value: 'height'),
                                    value: IntValueNode(value: '10'))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'url'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'proxyImageForSize'),
                              alias: NameNode(value: 'default'),
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'width'),
                                    value: IntValueNode(value: '383')),
                                ArgumentNode(
                                    name: NameNode(value: 'height'),
                                    value: IntValueNode(value: '257'))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'url'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'proxyImageForSize'),
                              alias: NameNode(value: 'default2x'),
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'width'),
                                    value: IntValueNode(value: '766')),
                                ArgumentNode(
                                    name: NameNode(value: 'height'),
                                    value: IntValueNode(value: '514'))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'url'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'images'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'proxyImageForSize'),
                              alias: NameNode(value: 'original'),
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'width'),
                                    value: IntValueNode(value: '708')),
                                ArgumentNode(
                                    name: NameNode(value: 'height'),
                                    value: IntValueNode(value: '470'))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'size'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'width'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'height'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'url'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'proxyImageForSize'),
                              alias: NameNode(value: 'thumbnail210x140'),
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'width'),
                                    value: IntValueNode(value: '210')),
                                ArgumentNode(
                                    name: NameNode(value: 'height'),
                                    value: IntValueNode(value: '140'))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'size'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'width'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'height'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'url'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'localizedName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'size'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'codes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'label'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'roomView'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'localizedName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'price'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'amount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'perPersonAmount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'taxAmount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'currency'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'programType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'travelType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'brand'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'soldOut'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'offerIncludes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'transferIncluded'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'discountInfoFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'DiscountInfo'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'fullAmount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'fullDiscountPercentage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'discountAmount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'discountReason'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'discountAmountPerNight'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'perNightFullAmount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'perNightDiscountPercentage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class GetOfferListQuery
    extends GraphQLQuery<GetOfferList$Query, GetOfferListArguments> {
  GetOfferListQuery({required this.variables});

  @override
  final DocumentNode document = GET_OFFER_LIST_QUERY_DOCUMENT;

  @override
  final String operationName = 'getOfferList';

  @override
  final GetOfferListArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetOfferList$Query parse(Map<String, dynamic> json) =>
      GetOfferList$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetRoomOverviewArguments extends JsonSerializable with EquatableMixin {
  GetRoomOverviewArguments({required this.hotelContentId});

  @override
  factory GetRoomOverviewArguments.fromJson(Map<String, dynamic> json) =>
      _$GetRoomOverviewArgumentsFromJson(json);

  late Map<String, dynamic> hotelContentId;

  @override
  List<Object?> get props => [hotelContentId];
  @override
  Map<String, dynamic> toJson() => _$GetRoomOverviewArgumentsToJson(this);
}

final GET_ROOM_OVERVIEW_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getRoomOverview'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'hotelContentId')),
            type: NamedTypeNode(
                name: NameNode(value: 'OfferHotelContentId'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'roomOverview'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'hotelContentId'),
                  value: VariableNode(name: NameNode(value: 'hotelContentId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'localizedDescription'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'rooms'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'mainImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'proxyImageForSize'),
                              alias: NameNode(value: 'default2x'),
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'width'),
                                    value: IntValueNode(value: '766')),
                                ArgumentNode(
                                    name: NameNode(value: 'height'),
                                    value: IntValueNode(value: '514'))
                              ],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'url'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'providerId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'localizedName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'size'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'roomView'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'localizedName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'nbcAttributes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'icon'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'localizedName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class GetRoomOverviewQuery
    extends GraphQLQuery<GetRoomOverview$Query, GetRoomOverviewArguments> {
  GetRoomOverviewQuery({required this.variables});

  @override
  final DocumentNode document = GET_ROOM_OVERVIEW_QUERY_DOCUMENT;

  @override
  final String operationName = 'getRoomOverview';

  @override
  final GetRoomOverviewArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetRoomOverview$Query parse(Map<String, dynamic> json) =>
      GetRoomOverview$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddToFavoritesArguments extends JsonSerializable with EquatableMixin {
  AddToFavoritesArguments(
      {required this.giataId,
      required this.offer,
      required this.productSearch});

  @override
  factory AddToFavoritesArguments.fromJson(Map<String, dynamic> json) =>
      _$AddToFavoritesArgumentsFromJson(json);

  late int giataId;

  late OfferInput offer;

  late Map<String, dynamic> productSearch;

  @override
  List<Object?> get props => [giataId, offer, productSearch];
  @override
  Map<String, dynamic> toJson() => _$AddToFavoritesArgumentsToJson(this);
}

final ADD_TO_FAVORITES_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'addToFavorites'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'giataId')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'offer')),
            type: NamedTypeNode(
                name: NameNode(value: 'OfferInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'productSearch')),
            type: NamedTypeNode(name: NameNode(value: 'JSON'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addFavorite'),
            alias: NameNode(value: 'result'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'giataId'),
                  value: VariableNode(name: NameNode(value: 'giataId'))),
              ArgumentNode(
                  name: NameNode(value: 'offer'),
                  value: VariableNode(name: NameNode(value: 'offer'))),
              ArgumentNode(
                  name: NameNode(value: 'productSearch'),
                  value: VariableNode(name: NameNode(value: 'productSearch')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class AddToFavoritesMutation
    extends GraphQLQuery<AddToFavorites$Mutation, AddToFavoritesArguments> {
  AddToFavoritesMutation({required this.variables});

  @override
  final DocumentNode document = ADD_TO_FAVORITES_MUTATION_DOCUMENT;

  @override
  final String operationName = 'addToFavorites';

  @override
  final AddToFavoritesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddToFavorites$Mutation parse(Map<String, dynamic> json) =>
      AddToFavorites$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ProductsQueryArguments extends JsonSerializable with EquatableMixin {
  ProductsQueryArguments(
      {required this.productSearch,
      this.currency,
      required this.showingResultsFrom,
      required this.resultsPerPage,
      required this.sortingOrder,
      this.withShipContent});

  @override
  factory ProductsQueryArguments.fromJson(Map<String, dynamic> json) =>
      _$ProductsQueryArgumentsFromJson(json);

  late ProductSearchInput productSearch;

  late  String? currency;

  late int showingResultsFrom;

  late int resultsPerPage;

  @JsonKey(unknownEnumValue: FilterSortingOrderEnum.artemisUnknown)
  late FilterSortingOrderEnum sortingOrder;

  final bool? withShipContent;

  @override
  List<Object?> get props => [
        productSearch,
        currency,
        showingResultsFrom,
        resultsPerPage,
        sortingOrder,
        withShipContent
      ];
  @override
  Map<String, dynamic> toJson() => _$ProductsQueryArgumentsToJson(this);
}

final PRODUCTS_QUERY_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'productsQuery'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'productSearch')),
            type: NamedTypeNode(
                name: NameNode(value: 'ProductSearchInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'currency')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'showingResultsFrom')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'resultsPerPage')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'sortingOrder')),
            type: NamedTypeNode(
                name: NameNode(value: 'FilterSortingOrderEnum'),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'withShipContent')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: false),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'products'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'packageProductRequest'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'metaAttributeFilter'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'currency'),
                              value: VariableNode(
                                  name: NameNode(value: 'currency')))
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'pagination'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'resultsPerPage'),
                              value: VariableNode(
                                  name: NameNode(value: 'resultsPerPage'))),
                          ObjectFieldNode(
                              name: NameNode(value: 'showingResultsFrom'),
                              value: VariableNode(
                                  name: NameNode(value: 'showingResultsFrom')))
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: 'productSearch'),
                        value: VariableNode(
                            name: NameNode(value: 'productSearch'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'sortingOrder'),
                        value:
                            VariableNode(name: NameNode(value: 'sortingOrder')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'pagination'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'resultsPerPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'resultsTotal'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'showingResultsFrom'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'packageProducts'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'hotelContent'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'description'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'full'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'sections'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ])),
                          FieldNode(
                              name: NameNode(value: 'logo'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'sizes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'url'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ])),
                          FieldNode(
                              name: NameNode(value: 'crsCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'timeToAirport'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'distanceToAirport'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'distanceToBeach'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'climate'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'avgAirTemp'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'avgWaterTemp'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FragmentSpreadNode(
                              name: NameNode(value: 'baseImages'),
                              directives: []),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'shipContent'),
                        alias: null,
                        arguments: [],
                        directives: [
                          DirectiveNode(
                              name: NameNode(value: 'include'),
                              arguments: [
                                ArgumentNode(
                                    name: NameNode(value: 'if'),
                                    value: VariableNode(
                                        name:
                                            NameNode(value: 'withShipContent')))
                              ])
                        ],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'baseShipImages'),
                              directives: []),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'topOffer'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name:
                                  NameNode(value: 'tsbobCollectionOfferFields'),
                              directives: []),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'alternativeOffer'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'sourceCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'price'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'amount'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'perPersonAmount'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'taxAmount'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'hotel'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'giataId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'references'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'iffCodes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'hotelAttributes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'hotelAttributes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'label'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'code'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'category'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'location'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'geoCode'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'latitude'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'longitude'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'region'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'country'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'city'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'climate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'avgAirTemp'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'avgWaterTemp'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(
                                              value: 'temperatureUnit'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'ratings'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'provider'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'providerProductId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'rating'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'value'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'tsbobCollectionOfferFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Offer'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'sourceCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'hash'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'isInFavorites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'hotelOfferCategory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'lengthOfStay'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'offerStartDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'hotelContentId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'tourOperator'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'code'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'offerStart'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'date'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'offerEnd'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'date'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'rooms'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'room'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'localizedName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'opCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'nbcAttributes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'icon'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'localizedName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'board'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'boardKey'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'label'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'opCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'codes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'label'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'price'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'amount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'perPersonAmount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'perNightAmount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'taxAmount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'discountInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'discountInfoFields'),
                        directives: []),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'departure'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'tsbobCollectionOfferFlights'),
                  directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'return'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'tsbobCollectionOfferFlights'),
                  directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'tsbobCollectionOfferFlights'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'Flight'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'departureAirport'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'code'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'arrivalAirport'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'code'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'airline'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'code'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'arrivalDateTime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'date'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'departureDateTime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'date'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'time'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'stopOver'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'flightSegments'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'flightNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'arrivalDateTime'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'date'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'departureDateTime'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'date'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'departureAirport'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'arrivalAirport'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'airline'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'duration'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'discountInfoFields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'DiscountInfo'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'fullAmount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'fullDiscountPercentage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'discountAmount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'discountReason'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'discountAmountPerNight'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'perNightFullAmount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'perNightDiscountPercentage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'baseImages'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'OfferBasedHotelContent'),
              isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'mainImage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'preview'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '10')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '10'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'default'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '540')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '400'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'default2x'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '766')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '514'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'images'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'sourceImageForSize'),
                  alias: NameNode(value: 'original'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '1820')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '1210'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'size'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'width'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'height'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'preview'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '10')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '10'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'default'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '540')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '400'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'default2x'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '766')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '514'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'baseShipImages'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'OfferBasedShipContent'),
              isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'mainImage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'preview'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '10')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '10'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'default'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '540')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '400'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'default2x'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '766')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '514'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'images'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'preview'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '10')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '10'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'default'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '540')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '400'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'proxyImageForSize'),
                  alias: NameNode(value: 'default2x'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'width'),
                        value: IntValueNode(value: '766')),
                    ArgumentNode(
                        name: NameNode(value: 'height'),
                        value: IntValueNode(value: '514'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class ProductsQueryQuery
    extends GraphQLQuery<ProductsQuery$Query, ProductsQueryArguments> {
  ProductsQueryQuery({required this.variables});

  @override
  final DocumentNode document = PRODUCTS_QUERY_QUERY_DOCUMENT;

  @override
  final String operationName = 'productsQuery';

  @override
  final ProductsQueryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ProductsQuery$Query parse(Map<String, dynamic> json) =>
      ProductsQuery$Query.fromJson(json);
}
