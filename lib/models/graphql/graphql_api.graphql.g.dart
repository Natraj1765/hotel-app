// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalTypes$Query$Options$GlobalTypesStatic$Data
    _$GlobalTypes$Query$Options$GlobalTypesStatic$DataFromJson(
        Map<String, dynamic> json) {
  return GlobalTypes$Query$Options$GlobalTypesStatic$Data()
    ..icon = json['icon'] as String?
    ..hidden = json['hidden'] as bool?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GlobalTypes$Query$Options$GlobalTypesStatic$DataToJson(
        GlobalTypes$Query$Options$GlobalTypesStatic$Data instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'hidden': instance.hidden,
      '__typename': instance.$$typename,
    };

GlobalTypes$Query$Options$GlobalTypesStatic$Children
    _$GlobalTypes$Query$Options$GlobalTypesStatic$ChildrenFromJson(
        Map<String, dynamic> json) {
  return GlobalTypes$Query$Options$GlobalTypesStatic$Children()
    ..label = json['label'] as String?
    ..value = json['value'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$GlobalTypes$Query$Options$GlobalTypesStatic$ChildrenToJson(
            GlobalTypes$Query$Options$GlobalTypesStatic$Children instance) =>
        <String, dynamic>{
          'label': instance.label,
          'value': instance.value,
          '__typename': instance.$$typename,
        };

GlobalTypes$Query$Options$GlobalTypesStatic
    _$GlobalTypes$Query$Options$GlobalTypesStaticFromJson(
        Map<String, dynamic> json) {
  return GlobalTypes$Query$Options$GlobalTypesStatic()
    ..label = json['label'] as String?
    ..value = json['value'] as String?
    ..data = json['data'] == null
        ? null
        : GlobalTypes$Query$Options$GlobalTypesStatic$Data.fromJson(
            json['data'] as Map<String, dynamic>)
    ..children = (json['children'] as List<dynamic>?)
        ?.map((e) =>
            GlobalTypes$Query$Options$GlobalTypesStatic$Children.fromJson(
                e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GlobalTypes$Query$Options$GlobalTypesStaticToJson(
        GlobalTypes$Query$Options$GlobalTypesStatic instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
      'data': instance.data?.toJson(),
      'children': instance.children?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

GlobalTypes$Query$Options _$GlobalTypes$Query$OptionsFromJson(
    Map<String, dynamic> json) {
  return GlobalTypes$Query$Options()
    ..globalTypesStatic = (json['globalTypesStatic'] as List<dynamic>?)
        ?.map((e) => GlobalTypes$Query$Options$GlobalTypesStatic.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GlobalTypes$Query$OptionsToJson(
        GlobalTypes$Query$Options instance) =>
    <String, dynamic>{
      'globalTypesStatic':
          instance.globalTypesStatic?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

GlobalTypes$Query _$GlobalTypes$QueryFromJson(Map<String, dynamic> json) {
  return GlobalTypes$Query()
    ..options = json['options'] == null
        ? null
        : GlobalTypes$Query$Options.fromJson(
            json['options'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GlobalTypes$QueryToJson(GlobalTypes$Query instance) =>
    <String, dynamic>{
      'options': instance.options?.toJson(),
    };

GetHotelsAutocomplete$Query$HotelSearch$References
    _$GetHotelsAutocomplete$Query$HotelSearch$ReferencesFromJson(
        Map<String, dynamic> json) {
  return GetHotelsAutocomplete$Query$HotelSearch$References()
    ..giataCodes =
        (json['giataCodes'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..hotelIds =
        (json['hotelIds'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..opicCodes =
        (json['opicCodes'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..iffCodes =
        (json['iffCodes'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..drvCodes =
        (json['drvCodes'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GetHotelsAutocomplete$Query$HotelSearch$ReferencesToJson(
        GetHotelsAutocomplete$Query$HotelSearch$References instance) =>
    <String, dynamic>{
      'giataCodes': instance.giataCodes,
      'hotelIds': instance.hotelIds,
      'opicCodes': instance.opicCodes,
      'iffCodes': instance.iffCodes,
      'drvCodes': instance.drvCodes,
      '__typename': instance.$$typename,
    };

GetHotelsAutocomplete$Query$HotelSearch
    _$GetHotelsAutocomplete$Query$HotelSearchFromJson(
        Map<String, dynamic> json) {
  return GetHotelsAutocomplete$Query$HotelSearch()
    ..label = json['label'] as String?
    ..references = json['references'] == null
        ? null
        : GetHotelsAutocomplete$Query$HotelSearch$References.fromJson(
            json['references'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GetHotelsAutocomplete$Query$HotelSearchToJson(
        GetHotelsAutocomplete$Query$HotelSearch instance) =>
    <String, dynamic>{
      'label': instance.label,
      'references': instance.references?.toJson(),
      '__typename': instance.$$typename,
    };

GetHotelsAutocomplete$Query _$GetHotelsAutocomplete$QueryFromJson(
    Map<String, dynamic> json) {
  return GetHotelsAutocomplete$Query()
    ..hotelSearch = (json['hotelSearch'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : GetHotelsAutocomplete$Query$HotelSearch.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$GetHotelsAutocomplete$QueryToJson(
        GetHotelsAutocomplete$Query instance) =>
    <String, dynamic>{
      'hotelSearch': instance.hotelSearch?.map((e) => e?.toJson()).toList(),
    };

FavoritesInfo$Query$Favorites _$FavoritesInfo$Query$FavoritesFromJson(
    Map<String, dynamic> json) {
  return FavoritesInfo$Query$Favorites()
    ..id = json['id'] as String?
    ..count = json['count'] as int?
    ..ownIdentity = json['ownIdentity'] as bool?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$FavoritesInfo$Query$FavoritesToJson(
        FavoritesInfo$Query$Favorites instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'ownIdentity': instance.ownIdentity,
      '__typename': instance.$$typename,
    };

FavoritesInfo$Query _$FavoritesInfo$QueryFromJson(Map<String, dynamic> json) {
  return FavoritesInfo$Query()
    ..favorites = json['favorites'] == null
        ? null
        : FavoritesInfo$Query$Favorites.fromJson(
            json['favorites'] as Map<String, dynamic>)
    ..favoriteIds = (json['favoriteIds'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();
}

Map<String, dynamic> _$FavoritesInfo$QueryToJson(
        FavoritesInfo$Query instance) =>
    <String, dynamic>{
      'favorites': instance.favorites?.toJson(),
      'favoriteIds': instance.favoriteIds,
    };

Destinations$Query$Options$Destinations$Children$Children$Children$Children
    _$Destinations$Query$Options$Destinations$Children$Children$Children$ChildrenFromJson(
        Map<String, dynamic> json) {
  return Destinations$Query$Options$Destinations$Children$Children$Children$Children()
    ..label = json['label'] as String?
    ..value = json['value'] as String?;
}

Map<String, dynamic>
    _$Destinations$Query$Options$Destinations$Children$Children$Children$ChildrenToJson(
            Destinations$Query$Options$Destinations$Children$Children$Children$Children
                instance) =>
        <String, dynamic>{
          'label': instance.label,
          'value': instance.value,
        };

Destinations$Query$Options$Destinations$Children$Children$Children
    _$Destinations$Query$Options$Destinations$Children$Children$ChildrenFromJson(
        Map<String, dynamic> json) {
  return Destinations$Query$Options$Destinations$Children$Children$Children()
    ..label = json['label'] as String?
    ..value = json['value'] as String?
    ..children = (json['children'] as List<dynamic>?)
        ?.map((e) =>
            Destinations$Query$Options$Destinations$Children$Children$Children$Children
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$Destinations$Query$Options$Destinations$Children$Children$ChildrenToJson(
            Destinations$Query$Options$Destinations$Children$Children$Children
                instance) =>
        <String, dynamic>{
          'label': instance.label,
          'value': instance.value,
          'children': instance.children?.map((e) => e.toJson()).toList(),
        };

Destinations$Query$Options$Destinations$Children$Children
    _$Destinations$Query$Options$Destinations$Children$ChildrenFromJson(
        Map<String, dynamic> json) {
  return Destinations$Query$Options$Destinations$Children$Children()
    ..label = json['label'] as String?
    ..value = json['value'] as String?
    ..children = (json['children'] as List<dynamic>?)
        ?.map((e) =>
            Destinations$Query$Options$Destinations$Children$Children$Children
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String,
    dynamic> _$Destinations$Query$Options$Destinations$Children$ChildrenToJson(
        Destinations$Query$Options$Destinations$Children$Children instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
      'children': instance.children?.map((e) => e.toJson()).toList(),
    };

Destinations$Query$Options$Destinations$Children
    _$Destinations$Query$Options$Destinations$ChildrenFromJson(
        Map<String, dynamic> json) {
  return Destinations$Query$Options$Destinations$Children()
    ..label = json['label'] as String?
    ..value = json['value'] as String?
    ..children = (json['children'] as List<dynamic>?)
        ?.map((e) =>
            Destinations$Query$Options$Destinations$Children$Children.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Destinations$Query$Options$Destinations$ChildrenToJson(
        Destinations$Query$Options$Destinations$Children instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
      'children': instance.children?.map((e) => e.toJson()).toList(),
    };

Destinations$Query$Options$Destinations
    _$Destinations$Query$Options$DestinationsFromJson(
        Map<String, dynamic> json) {
  return Destinations$Query$Options$Destinations()
    ..label = json['label'] as String?
    ..nodeCode = json['nodeCode'] as String?
    ..value = json['value'] as String?
    ..children = (json['children'] as List<dynamic>?)
        ?.map((e) => Destinations$Query$Options$Destinations$Children.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Destinations$Query$Options$DestinationsToJson(
        Destinations$Query$Options$Destinations instance) =>
    <String, dynamic>{
      'label': instance.label,
      'nodeCode': instance.nodeCode,
      'value': instance.value,
      'children': instance.children?.map((e) => e.toJson()).toList(),
    };

Destinations$Query$Options _$Destinations$Query$OptionsFromJson(
    Map<String, dynamic> json) {
  return Destinations$Query$Options()
    ..destinations = (json['destinations'] as List<dynamic>?)
        ?.map((e) => Destinations$Query$Options$Destinations.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$Destinations$Query$OptionsToJson(
        Destinations$Query$Options instance) =>
    <String, dynamic>{
      'destinations': instance.destinations?.map((e) => e.toJson()).toList(),
    };

Destinations$Query _$Destinations$QueryFromJson(Map<String, dynamic> json) {
  return Destinations$Query()
    ..options = json['options'] == null
        ? null
        : Destinations$Query$Options.fromJson(
            json['options'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Destinations$QueryToJson(Destinations$Query instance) =>
    <String, dynamic>{
      'options': instance.options?.toJson(),
    };

GetHotelReviews$Query$Reviews$PageInfo
    _$GetHotelReviews$Query$Reviews$PageInfoFromJson(
        Map<String, dynamic> json) {
  return GetHotelReviews$Query$Reviews$PageInfo()
    ..resultsTotal = json['resultsTotal'] as int
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GetHotelReviews$Query$Reviews$PageInfoToJson(
        GetHotelReviews$Query$Reviews$PageInfo instance) =>
    <String, dynamic>{
      'resultsTotal': instance.resultsTotal,
      '__typename': instance.$$typename,
    };

GetHotelReviews$Query$Reviews$List _$GetHotelReviews$Query$Reviews$ListFromJson(
    Map<String, dynamic> json) {
  return GetHotelReviews$Query$Reviews$List()
    ..ratingAllOver = (json['ratingAllOver'] as num?)?.toDouble()
    ..headline = json['headline'] as String?
    ..title = json['title'] as String?
    ..firstName = json['firstName'] as String?
    ..age = json['age'] as String?
    ..monthOfTravel = json['monthOfTravel'] as String?
    ..yearOfTravel = json['yearOfTravel'] as String?
    ..travelledAs = json['travelledAs'] as String?
    ..conclusion = json['conclusion'] as String?
    ..ratingId = json['ratingId'] as String?
    ..fullReviewUrl = json['fullReviewUrl'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GetHotelReviews$Query$Reviews$ListToJson(
        GetHotelReviews$Query$Reviews$List instance) =>
    <String, dynamic>{
      'ratingAllOver': instance.ratingAllOver,
      'headline': instance.headline,
      'title': instance.title,
      'firstName': instance.firstName,
      'age': instance.age,
      'monthOfTravel': instance.monthOfTravel,
      'yearOfTravel': instance.yearOfTravel,
      'travelledAs': instance.travelledAs,
      'conclusion': instance.conclusion,
      'ratingId': instance.ratingId,
      'fullReviewUrl': instance.fullReviewUrl,
      '__typename': instance.$$typename,
    };

GetHotelReviews$Query$Reviews _$GetHotelReviews$Query$ReviewsFromJson(
    Map<String, dynamic> json) {
  return GetHotelReviews$Query$Reviews()
    ..pageInfo = json['pageInfo'] == null
        ? null
        : GetHotelReviews$Query$Reviews$PageInfo.fromJson(
            json['pageInfo'] as Map<String, dynamic>)
    ..list = (json['list'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : GetHotelReviews$Query$Reviews$List.fromJson(
                e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GetHotelReviews$Query$ReviewsToJson(
        GetHotelReviews$Query$Reviews instance) =>
    <String, dynamic>{
      'pageInfo': instance.pageInfo?.toJson(),
      'list': instance.list?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$$typename,
    };

GetHotelReviews$Query _$GetHotelReviews$QueryFromJson(
    Map<String, dynamic> json) {
  return GetHotelReviews$Query()
    ..hotelRatingGroupCodes = (json['hotelRatingGroupCodes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..reviews = json['reviews'] == null
        ? null
        : GetHotelReviews$Query$Reviews.fromJson(
            json['reviews'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetHotelReviews$QueryToJson(
        GetHotelReviews$Query instance) =>
    <String, dynamic>{
      'hotelRatingGroupCodes': instance.hotelRatingGroupCodes,
      'reviews': instance.reviews?.toJson(),
    };

ReviewsFilter _$ReviewsFilterFromJson(Map<String, dynamic> json) {
  return ReviewsFilter(
    ratingProductId: json['ratingProductId'] as String?,
    iffCode: json['iffCode'] as int?,
    travelledAs: json['travelledAs'] as String?,
  );
}

Map<String, dynamic> _$ReviewsFilterToJson(ReviewsFilter instance) =>
    <String, dynamic>{
      'ratingProductId': instance.ratingProductId,
      'iffCode': instance.iffCode,
      'travelledAs': instance.travelledAs,
    };

PagingInput _$PagingInputFromJson(Map<String, dynamic> json) {
  return PagingInput(
    page: json['page'] as int,
    resultsPerPage: json['resultsPerPage'] as int,
  );
}

Map<String, dynamic> _$PagingInputToJson(PagingInput instance) =>
    <String, dynamic>{
      'page': instance.page,
      'resultsPerPage': instance.resultsPerPage,
    };

GetOfferList$Query$ProductOffers$Hotels$Offers
    _$GetOfferList$Query$ProductOffers$Hotels$OffersFromJson(
        Map<String, dynamic> json) {
  return GetOfferList$Query$ProductOffers$Hotels$Offers()
    ..id = json['id'] as String
    ..externalId = json['externalId'] as String?
    ..hash = json['hash'] as String
    ..hotelContentId = json['hotelContentId'] as Map<String, dynamic>
    ..hotelOfferCategory = (json['hotelOfferCategory'] as num?)?.toDouble()
    ..isInFavorites = json['isInFavorites'] as bool
    ..productCode = json['productCode'] as String
    ..lengthOfStay = json['lengthOfStay'] as int
    ..sourceCode = json['sourceCode'] as String?
    ..price = json['price'] == null
        ? null
        : DetailOfferDataMixin$Price.fromJson(
            json['price'] as Map<String, dynamic>)
    ..departure = json['departure'] == null
        ? null
        : DetailOfferDataMixin$Departure.fromJson(
            json['departure'] as Map<String, dynamic>)
    ..kw$return = json['return'] == null
        ? null
        : DetailOfferDataMixin$Kw$return.fromJson(
            json['return'] as Map<String, dynamic>)
    ..tourOperator = json['tourOperator'] == null
        ? null
        : DetailOfferDataMixin$TourOperator.fromJson(
            json['tourOperator'] as Map<String, dynamic>)
    ..offerStart = DetailOfferDataMixin$OfferStart.fromJson(
        json['offerStart'] as Map<String, dynamic>)
    ..offerEnd = DetailOfferDataMixin$OfferEnd.fromJson(
        json['offerEnd'] as Map<String, dynamic>)
    ..rooms = json['rooms'] == null
        ? null
        : DetailOfferDataMixin$Rooms.fromJson(
            json['rooms'] as Map<String, dynamic>)
    ..programType = json['programType'] as String?
    ..travelType = json['travelType'] as String?
    ..brand = json['brand'] as String?
    ..soldOut = json['soldOut'] as bool?
    ..offerIncludes = (json['offerIncludes'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$OfferOfferIncludesEnumEnumMap, e,
            unknownValue: OfferOfferIncludesEnum.artemisUnknown))
        .toList()
    ..transferIncluded = json['transferIncluded'] as bool?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GetOfferList$Query$ProductOffers$Hotels$OffersToJson(
        GetOfferList$Query$ProductOffers$Hotels$Offers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'externalId': instance.externalId,
      'hash': instance.hash,
      'hotelContentId': instance.hotelContentId,
      'hotelOfferCategory': instance.hotelOfferCategory,
      'isInFavorites': instance.isInFavorites,
      'productCode': instance.productCode,
      'lengthOfStay': instance.lengthOfStay,
      'sourceCode': instance.sourceCode,
      'price': instance.price?.toJson(),
      'departure': instance.departure?.toJson(),
      'return': instance.kw$return?.toJson(),
      'tourOperator': instance.tourOperator?.toJson(),
      'offerStart': instance.offerStart.toJson(),
      'offerEnd': instance.offerEnd.toJson(),
      'rooms': instance.rooms?.toJson(),
      'programType': instance.programType,
      'travelType': instance.travelType,
      'brand': instance.brand,
      'soldOut': instance.soldOut,
      'offerIncludes': instance.offerIncludes
          ?.map((e) => _$OfferOfferIncludesEnumEnumMap[e])
          .toList(),
      'transferIncluded': instance.transferIncluded,
      '__typename': instance.$$typename,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$OfferOfferIncludesEnumEnumMap = {
  OfferOfferIncludesEnum.entrance: 'ENTRANCE',
  OfferOfferIncludesEnum.excursion: 'EXCURSION',
  OfferOfferIncludesEnum.freeCancellation: 'FREE_CANCELLATION',
  OfferOfferIncludesEnum.freeRebooking: 'FREE_REBOOKING',
  OfferOfferIncludesEnum.golfPass: 'GOLF_PASS',
  OfferOfferIncludesEnum.railAndFly: 'RAIL_AND_FLY',
  OfferOfferIncludesEnum.rentalCar: 'RENTAL_CAR',
  OfferOfferIncludesEnum.skiPass: 'SKI_PASS',
  OfferOfferIncludesEnum.sport: 'SPORT',
  OfferOfferIncludesEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

GetOfferList$Query$ProductOffers$Hotels
    _$GetOfferList$Query$ProductOffers$HotelsFromJson(
        Map<String, dynamic> json) {
  return GetOfferList$Query$ProductOffers$Hotels()
    ..offers = (json['offers'] as List<dynamic>)
        .map((e) => GetOfferList$Query$ProductOffers$Hotels$Offers.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GetOfferList$Query$ProductOffers$HotelsToJson(
        GetOfferList$Query$ProductOffers$Hotels instance) =>
    <String, dynamic>{
      'offers': instance.offers.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

GetOfferList$Query$ProductOffers$Pagination
    _$GetOfferList$Query$ProductOffers$PaginationFromJson(
        Map<String, dynamic> json) {
  return GetOfferList$Query$ProductOffers$Pagination()
    ..resultsTotal = json['resultsTotal'] as int
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GetOfferList$Query$ProductOffers$PaginationToJson(
        GetOfferList$Query$ProductOffers$Pagination instance) =>
    <String, dynamic>{
      'resultsTotal': instance.resultsTotal,
      '__typename': instance.$$typename,
    };

GetOfferList$Query$ProductOffers _$GetOfferList$Query$ProductOffersFromJson(
    Map<String, dynamic> json) {
  return GetOfferList$Query$ProductOffers()
    ..hotels = (json['hotels'] as List<dynamic>?)
        ?.map((e) => GetOfferList$Query$ProductOffers$Hotels.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..pagination = json['pagination'] == null
        ? null
        : GetOfferList$Query$ProductOffers$Pagination.fromJson(
            json['pagination'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$GetOfferList$Query$ProductOffersToJson(
        GetOfferList$Query$ProductOffers instance) =>
    <String, dynamic>{
      'hotels': instance.hotels?.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination?.toJson(),
      '__typename': instance.$$typename,
    };

GetOfferList$Query _$GetOfferList$QueryFromJson(Map<String, dynamic> json) {
  return GetOfferList$Query()
    ..productOffers = json['productOffers'] == null
        ? null
        : GetOfferList$Query$ProductOffers.fromJson(
            json['productOffers'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetOfferList$QueryToJson(GetOfferList$Query instance) =>
    <String, dynamic>{
      'productOffers': instance.productOffers?.toJson(),
    };

DetailOfferDataMixin$Price$DiscountInfo
    _$DetailOfferDataMixin$Price$DiscountInfoFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Price$DiscountInfo()
    ..fullAmount = (json['fullAmount'] as num?)?.toDouble()
    ..fullDiscountPercentage = json['fullDiscountPercentage'] as int?
    ..discountAmount = (json['discountAmount'] as num?)?.toDouble()
    ..discountReason = json['discountReason'] as String?
    ..discountAmountPerNight = json['discountAmountPerNight'] as bool?
    ..perNightFullAmount = (json['perNightFullAmount'] as num?)?.toDouble()
    ..perNightDiscountPercentage = json['perNightDiscountPercentage'] as int?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Price$DiscountInfoToJson(
        DetailOfferDataMixin$Price$DiscountInfo instance) =>
    <String, dynamic>{
      'fullAmount': instance.fullAmount,
      'fullDiscountPercentage': instance.fullDiscountPercentage,
      'discountAmount': instance.discountAmount,
      'discountReason': instance.discountReason,
      'discountAmountPerNight': instance.discountAmountPerNight,
      'perNightFullAmount': instance.perNightFullAmount,
      'perNightDiscountPercentage': instance.perNightDiscountPercentage,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Price _$DetailOfferDataMixin$PriceFromJson(
    Map<String, dynamic> json) {
  return DetailOfferDataMixin$Price()
    ..amount = (json['amount'] as num).toDouble()
    ..perPersonAmount = (json['perPersonAmount'] as num?)?.toDouble()
    ..perNightAmount = (json['perNightAmount'] as num).toDouble()
    ..taxAmount = (json['taxAmount'] as num).toDouble()
    ..currency = json['currency'] as String
    ..refId = json['refId'] as int?
    ..discountInfo = json['discountInfo'] == null
        ? null
        : DetailOfferDataMixin$Price$DiscountInfo.fromJson(
            json['discountInfo'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$PriceToJson(
        DetailOfferDataMixin$Price instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'perPersonAmount': instance.perPersonAmount,
      'perNightAmount': instance.perNightAmount,
      'taxAmount': instance.taxAmount,
      'currency': instance.currency,
      'refId': instance.refId,
      'discountInfo': instance.discountInfo?.toJson(),
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Departure$DepartureAirport
    _$DetailOfferDataMixin$Departure$DepartureAirportFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$DepartureAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Departure$DepartureAirportToJson(
        DetailOfferDataMixin$Departure$DepartureAirport instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Departure$ArrivalAirport
    _$DetailOfferDataMixin$Departure$ArrivalAirportFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$ArrivalAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Departure$ArrivalAirportToJson(
        DetailOfferDataMixin$Departure$ArrivalAirport instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Departure$Airline
    _$DetailOfferDataMixin$Departure$AirlineFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$Airline()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Departure$AirlineToJson(
        DetailOfferDataMixin$Departure$Airline instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Departure$ArrivalDateTime
    _$DetailOfferDataMixin$Departure$ArrivalDateTimeFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$ArrivalDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Departure$ArrivalDateTimeToJson(
        DetailOfferDataMixin$Departure$ArrivalDateTime instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Departure$DepartureDateTime
    _$DetailOfferDataMixin$Departure$DepartureDateTimeFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$DepartureDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Departure$DepartureDateTimeToJson(
        DetailOfferDataMixin$Departure$DepartureDateTime instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTime
    _$DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTimeFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTimeToJson(
            DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTime
                instance) =>
        <String, dynamic>{
          'date': instance.date.toIso8601String(),
          'time': instance.time,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTime
    _$DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTimeFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTimeToJson(
            DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTime
                instance) =>
        <String, dynamic>{
          'date': instance.date.toIso8601String(),
          'time': instance.time,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Departure$FlightSegments$DepartureAirport
    _$DetailOfferDataMixin$Departure$FlightSegments$DepartureAirportFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$FlightSegments$DepartureAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Departure$FlightSegments$DepartureAirportToJson(
            DetailOfferDataMixin$Departure$FlightSegments$DepartureAirport
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'code': instance.code,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirport
    _$DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirportFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirportToJson(
            DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirport
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'code': instance.code,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Departure$FlightSegments$Airline
    _$DetailOfferDataMixin$Departure$FlightSegments$AirlineFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$FlightSegments$Airline()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Departure$FlightSegments$AirlineToJson(
            DetailOfferDataMixin$Departure$FlightSegments$Airline instance) =>
        <String, dynamic>{
          'name': instance.name,
          'code': instance.code,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Departure$FlightSegments
    _$DetailOfferDataMixin$Departure$FlightSegmentsFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure$FlightSegments()
    ..flightNumber = json['flightNumber'] as String?
    ..arrivalDateTime = json['arrivalDateTime'] == null
        ? null
        : DetailOfferDataMixin$Departure$FlightSegments$ArrivalDateTime
            .fromJson(json['arrivalDateTime'] as Map<String, dynamic>)
    ..departureDateTime = json['departureDateTime'] == null
        ? null
        : DetailOfferDataMixin$Departure$FlightSegments$DepartureDateTime
            .fromJson(json['departureDateTime'] as Map<String, dynamic>)
    ..departureAirport = json['departureAirport'] == null
        ? null
        : DetailOfferDataMixin$Departure$FlightSegments$DepartureAirport
            .fromJson(json['departureAirport'] as Map<String, dynamic>)
    ..arrivalAirport = json['arrivalAirport'] == null
        ? null
        : DetailOfferDataMixin$Departure$FlightSegments$ArrivalAirport.fromJson(
            json['arrivalAirport'] as Map<String, dynamic>)
    ..airline = json['airline'] == null
        ? null
        : DetailOfferDataMixin$Departure$FlightSegments$Airline.fromJson(
            json['airline'] as Map<String, dynamic>)
    ..duration = json['duration'] as int?
    ..distance = json['distance'] as int?
    ..bookingClass = json['bookingClass'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Departure$FlightSegmentsToJson(
        DetailOfferDataMixin$Departure$FlightSegments instance) =>
    <String, dynamic>{
      'flightNumber': instance.flightNumber,
      'arrivalDateTime': instance.arrivalDateTime?.toJson(),
      'departureDateTime': instance.departureDateTime?.toJson(),
      'departureAirport': instance.departureAirport?.toJson(),
      'arrivalAirport': instance.arrivalAirport?.toJson(),
      'airline': instance.airline?.toJson(),
      'duration': instance.duration,
      'distance': instance.distance,
      'bookingClass': instance.bookingClass,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Departure _$DetailOfferDataMixin$DepartureFromJson(
    Map<String, dynamic> json) {
  return DetailOfferDataMixin$Departure()
    ..departureAirport = json['departureAirport'] == null
        ? null
        : DetailOfferDataMixin$Departure$DepartureAirport.fromJson(
            json['departureAirport'] as Map<String, dynamic>)
    ..arrivalAirport = json['arrivalAirport'] == null
        ? null
        : DetailOfferDataMixin$Departure$ArrivalAirport.fromJson(
            json['arrivalAirport'] as Map<String, dynamic>)
    ..airline = json['airline'] == null
        ? null
        : DetailOfferDataMixin$Departure$Airline.fromJson(
            json['airline'] as Map<String, dynamic>)
    ..arrivalDateTime = json['arrivalDateTime'] == null
        ? null
        : DetailOfferDataMixin$Departure$ArrivalDateTime.fromJson(
            json['arrivalDateTime'] as Map<String, dynamic>)
    ..departureDateTime = json['departureDateTime'] == null
        ? null
        : DetailOfferDataMixin$Departure$DepartureDateTime.fromJson(
            json['departureDateTime'] as Map<String, dynamic>)
    ..flightKey = json['flightKey'] as String?
    ..flightCode = json['flightCode'] as String?
    ..flightID = json['flightID'] as String?
    ..flightLabel = json['flightLabel'] as String?
    ..flightNumber = json['flightNumber'] as String?
    ..duration = json['duration'] as int?
    ..priority = json['priority'] as int?
    ..stopOver = json['stopOver'] as int?
    ..distance = json['distance'] as int?
    ..bookingCode = json['bookingCode'] as String?
    ..bookingClass = json['bookingClass'] as String?
    ..flightSegments = (json['flightSegments'] as List<dynamic>?)
        ?.map((e) => DetailOfferDataMixin$Departure$FlightSegments.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$DepartureToJson(
        DetailOfferDataMixin$Departure instance) =>
    <String, dynamic>{
      'departureAirport': instance.departureAirport?.toJson(),
      'arrivalAirport': instance.arrivalAirport?.toJson(),
      'airline': instance.airline?.toJson(),
      'arrivalDateTime': instance.arrivalDateTime?.toJson(),
      'departureDateTime': instance.departureDateTime?.toJson(),
      'flightKey': instance.flightKey,
      'flightCode': instance.flightCode,
      'flightID': instance.flightID,
      'flightLabel': instance.flightLabel,
      'flightNumber': instance.flightNumber,
      'duration': instance.duration,
      'priority': instance.priority,
      'stopOver': instance.stopOver,
      'distance': instance.distance,
      'bookingCode': instance.bookingCode,
      'bookingClass': instance.bookingClass,
      'flightSegments':
          instance.flightSegments?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Kw$return$DepartureAirport
    _$DetailOfferDataMixin$Kw$return$DepartureAirportFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$DepartureAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Kw$return$DepartureAirportToJson(
        DetailOfferDataMixin$Kw$return$DepartureAirport instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Kw$return$ArrivalAirport
    _$DetailOfferDataMixin$Kw$return$ArrivalAirportFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$ArrivalAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Kw$return$ArrivalAirportToJson(
        DetailOfferDataMixin$Kw$return$ArrivalAirport instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Kw$return$Airline
    _$DetailOfferDataMixin$Kw$return$AirlineFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$Airline()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Kw$return$AirlineToJson(
        DetailOfferDataMixin$Kw$return$Airline instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Kw$return$ArrivalDateTime
    _$DetailOfferDataMixin$Kw$return$ArrivalDateTimeFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$ArrivalDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Kw$return$ArrivalDateTimeToJson(
        DetailOfferDataMixin$Kw$return$ArrivalDateTime instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Kw$return$DepartureDateTime
    _$DetailOfferDataMixin$Kw$return$DepartureDateTimeFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$DepartureDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Kw$return$DepartureDateTimeToJson(
        DetailOfferDataMixin$Kw$return$DepartureDateTime instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTime
    _$DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTimeFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTimeToJson(
            DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTime
                instance) =>
        <String, dynamic>{
          'date': instance.date.toIso8601String(),
          'time': instance.time,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTime
    _$DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTimeFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTimeToJson(
            DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTime
                instance) =>
        <String, dynamic>{
          'date': instance.date.toIso8601String(),
          'time': instance.time,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirport
    _$DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirportFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirportToJson(
            DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirport
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'code': instance.code,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirport
    _$DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirportFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirportToJson(
            DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirport
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'code': instance.code,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Kw$return$FlightSegments$Airline
    _$DetailOfferDataMixin$Kw$return$FlightSegments$AirlineFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$FlightSegments$Airline()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Kw$return$FlightSegments$AirlineToJson(
            DetailOfferDataMixin$Kw$return$FlightSegments$Airline instance) =>
        <String, dynamic>{
          'name': instance.name,
          'code': instance.code,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Kw$return$FlightSegments
    _$DetailOfferDataMixin$Kw$return$FlightSegmentsFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return$FlightSegments()
    ..flightNumber = json['flightNumber'] as String?
    ..arrivalDateTime = json['arrivalDateTime'] == null
        ? null
        : DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalDateTime
            .fromJson(json['arrivalDateTime'] as Map<String, dynamic>)
    ..departureDateTime = json['departureDateTime'] == null
        ? null
        : DetailOfferDataMixin$Kw$return$FlightSegments$DepartureDateTime
            .fromJson(json['departureDateTime'] as Map<String, dynamic>)
    ..departureAirport = json['departureAirport'] == null
        ? null
        : DetailOfferDataMixin$Kw$return$FlightSegments$DepartureAirport
            .fromJson(json['departureAirport'] as Map<String, dynamic>)
    ..arrivalAirport = json['arrivalAirport'] == null
        ? null
        : DetailOfferDataMixin$Kw$return$FlightSegments$ArrivalAirport.fromJson(
            json['arrivalAirport'] as Map<String, dynamic>)
    ..airline = json['airline'] == null
        ? null
        : DetailOfferDataMixin$Kw$return$FlightSegments$Airline.fromJson(
            json['airline'] as Map<String, dynamic>)
    ..duration = json['duration'] as int?
    ..distance = json['distance'] as int?
    ..bookingClass = json['bookingClass'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Kw$return$FlightSegmentsToJson(
        DetailOfferDataMixin$Kw$return$FlightSegments instance) =>
    <String, dynamic>{
      'flightNumber': instance.flightNumber,
      'arrivalDateTime': instance.arrivalDateTime?.toJson(),
      'departureDateTime': instance.departureDateTime?.toJson(),
      'departureAirport': instance.departureAirport?.toJson(),
      'arrivalAirport': instance.arrivalAirport?.toJson(),
      'airline': instance.airline?.toJson(),
      'duration': instance.duration,
      'distance': instance.distance,
      'bookingClass': instance.bookingClass,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Kw$return _$DetailOfferDataMixin$Kw$returnFromJson(
    Map<String, dynamic> json) {
  return DetailOfferDataMixin$Kw$return()
    ..departureAirport = json['departureAirport'] == null
        ? null
        : DetailOfferDataMixin$Kw$return$DepartureAirport.fromJson(
            json['departureAirport'] as Map<String, dynamic>)
    ..arrivalAirport = json['arrivalAirport'] == null
        ? null
        : DetailOfferDataMixin$Kw$return$ArrivalAirport.fromJson(
            json['arrivalAirport'] as Map<String, dynamic>)
    ..airline = json['airline'] == null
        ? null
        : DetailOfferDataMixin$Kw$return$Airline.fromJson(
            json['airline'] as Map<String, dynamic>)
    ..arrivalDateTime = json['arrivalDateTime'] == null
        ? null
        : DetailOfferDataMixin$Kw$return$ArrivalDateTime.fromJson(
            json['arrivalDateTime'] as Map<String, dynamic>)
    ..departureDateTime = json['departureDateTime'] == null
        ? null
        : DetailOfferDataMixin$Kw$return$DepartureDateTime.fromJson(
            json['departureDateTime'] as Map<String, dynamic>)
    ..flightKey = json['flightKey'] as String?
    ..flightCode = json['flightCode'] as String?
    ..flightID = json['flightID'] as String?
    ..flightLabel = json['flightLabel'] as String?
    ..flightNumber = json['flightNumber'] as String?
    ..duration = json['duration'] as int?
    ..priority = json['priority'] as int?
    ..stopOver = json['stopOver'] as int?
    ..distance = json['distance'] as int?
    ..bookingCode = json['bookingCode'] as String?
    ..bookingClass = json['bookingClass'] as String?
    ..flightSegments = (json['flightSegments'] as List<dynamic>?)
        ?.map((e) => DetailOfferDataMixin$Kw$return$FlightSegments.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Kw$returnToJson(
        DetailOfferDataMixin$Kw$return instance) =>
    <String, dynamic>{
      'departureAirport': instance.departureAirport?.toJson(),
      'arrivalAirport': instance.arrivalAirport?.toJson(),
      'airline': instance.airline?.toJson(),
      'arrivalDateTime': instance.arrivalDateTime?.toJson(),
      'departureDateTime': instance.departureDateTime?.toJson(),
      'flightKey': instance.flightKey,
      'flightCode': instance.flightCode,
      'flightID': instance.flightID,
      'flightLabel': instance.flightLabel,
      'flightNumber': instance.flightNumber,
      'duration': instance.duration,
      'priority': instance.priority,
      'stopOver': instance.stopOver,
      'distance': instance.distance,
      'bookingCode': instance.bookingCode,
      'bookingClass': instance.bookingClass,
      'flightSegments':
          instance.flightSegments?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$TourOperator _$DetailOfferDataMixin$TourOperatorFromJson(
    Map<String, dynamic> json) {
  return DetailOfferDataMixin$TourOperator()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$TourOperatorToJson(
        DetailOfferDataMixin$TourOperator instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$OfferStart _$DetailOfferDataMixin$OfferStartFromJson(
    Map<String, dynamic> json) {
  return DetailOfferDataMixin$OfferStart()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$OfferStartToJson(
        DetailOfferDataMixin$OfferStart instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$OfferEnd _$DetailOfferDataMixin$OfferEndFromJson(
    Map<String, dynamic> json) {
  return DetailOfferDataMixin$OfferEnd()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$OfferEndToJson(
        DetailOfferDataMixin$OfferEnd instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$Board
    _$DetailOfferDataMixin$Rooms$Room$BoardFromJson(Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$Board()
    ..label = json['label'] as String?
    ..description = json['description'] as String?
    ..code = json['code'] as String?
    ..opCode = json['opCode'] as String?
    ..name = json['name'] as String?
    ..localizedName = json['localizedName'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$BoardToJson(
        DetailOfferDataMixin$Rooms$Room$Board instance) =>
    <String, dynamic>{
      'label': instance.label,
      'description': instance.description,
      'code': instance.code,
      'opCode': instance.opCode,
      'name': instance.name,
      'localizedName': instance.localizedName,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$NbcAttributes
    _$DetailOfferDataMixin$Rooms$Room$NbcAttributesFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$NbcAttributes()
    ..code = json['code'] as String?
    ..name = json['name'] as String?
    ..icon = json['icon'] as String?
    ..localizedName = json['localizedName'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$NbcAttributesToJson(
        DetailOfferDataMixin$Rooms$Room$NbcAttributes instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'icon': instance.icon,
      'localizedName': instance.localizedName,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$Extras
    _$DetailOfferDataMixin$Rooms$Room$ExtrasFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$Extras()
    ..type = json['type'] as String?
    ..included = json['included'] as bool?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$ExtrasToJson(
        DetailOfferDataMixin$Rooms$Room$Extras instance) =>
    <String, dynamic>{
      'type': instance.type,
      'included': instance.included,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$Views
    _$DetailOfferDataMixin$Rooms$Room$ViewsFromJson(Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$Views()
    ..code = json['code'] as String?
    ..label = json['label'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$ViewsToJson(
        DetailOfferDataMixin$Rooms$Room$Views instance) =>
    <String, dynamic>{
      'code': instance.code,
      'label': instance.label,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$MainImage$Preview
    _$DetailOfferDataMixin$Rooms$Room$MainImage$PreviewFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$MainImage$Preview()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$MainImage$PreviewToJson(
        DetailOfferDataMixin$Rooms$Room$MainImage$Preview instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$MainImage$Kw$default
    _$DetailOfferDataMixin$Rooms$Room$MainImage$Kw$defaultFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$MainImage$Kw$default()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Rooms$Room$MainImage$Kw$defaultToJson(
            DetailOfferDataMixin$Rooms$Room$MainImage$Kw$default instance) =>
        <String, dynamic>{
          'url': instance.url,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Rooms$Room$MainImage$Default2x
    _$DetailOfferDataMixin$Rooms$Room$MainImage$Default2xFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$MainImage$Default2x()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Rooms$Room$MainImage$Default2xToJson(
            DetailOfferDataMixin$Rooms$Room$MainImage$Default2x instance) =>
        <String, dynamic>{
          'url': instance.url,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Rooms$Room$MainImage
    _$DetailOfferDataMixin$Rooms$Room$MainImageFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$MainImage()
    ..preview = json['preview'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$MainImage$Preview.fromJson(
            json['preview'] as Map<String, dynamic>)
    ..kw$default = json['default'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$MainImage$Kw$default.fromJson(
            json['default'] as Map<String, dynamic>)
    ..default2x = json['default2x'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$MainImage$Default2x.fromJson(
            json['default2x'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$MainImageToJson(
        DetailOfferDataMixin$Rooms$Room$MainImage instance) =>
    <String, dynamic>{
      'preview': instance.preview?.toJson(),
      'default': instance.kw$default?.toJson(),
      'default2x': instance.default2x?.toJson(),
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$Images$Original$Size
    _$DetailOfferDataMixin$Rooms$Room$Images$Original$SizeFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$Images$Original$Size()
    ..width = json['width'] as int?
    ..height = json['height'] as int?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Rooms$Room$Images$Original$SizeToJson(
            DetailOfferDataMixin$Rooms$Room$Images$Original$Size instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Rooms$Room$Images$Original
    _$DetailOfferDataMixin$Rooms$Room$Images$OriginalFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$Images$Original()
    ..size = json['size'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$Images$Original$Size.fromJson(
            json['size'] as Map<String, dynamic>)
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$Images$OriginalToJson(
        DetailOfferDataMixin$Rooms$Room$Images$Original instance) =>
    <String, dynamic>{
      'size': instance.size?.toJson(),
      'url': instance.url,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$Size
    _$DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$SizeFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$Size()
    ..width = json['width'] as int?
    ..height = json['height'] as int?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$SizeToJson(
            DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$Size
                instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140
    _$DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140FromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140()
    ..size = json['size'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140$Size.fromJson(
            json['size'] as Map<String, dynamic>)
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140ToJson(
            DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140 instance) =>
        <String, dynamic>{
          'size': instance.size?.toJson(),
          'url': instance.url,
          '__typename': instance.$$typename,
        };

DetailOfferDataMixin$Rooms$Room$Images
    _$DetailOfferDataMixin$Rooms$Room$ImagesFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$Images()
    ..original = json['original'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$Images$Original.fromJson(
            json['original'] as Map<String, dynamic>)
    ..thumbnail210x140 = json['thumbnail210x140'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$Images$Thumbnail210x140.fromJson(
            json['thumbnail210x140'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$ImagesToJson(
        DetailOfferDataMixin$Rooms$Room$Images instance) =>
    <String, dynamic>{
      'original': instance.original?.toJson(),
      'thumbnail210x140': instance.thumbnail210x140?.toJson(),
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$Codes
    _$DetailOfferDataMixin$Rooms$Room$CodesFromJson(Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$Codes()
    ..code = json['code'] as String?
    ..label = json['label'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$CodesToJson(
        DetailOfferDataMixin$Rooms$Room$Codes instance) =>
    <String, dynamic>{
      'code': instance.code,
      'label': instance.label,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$RoomView
    _$DetailOfferDataMixin$Rooms$Room$RoomViewFromJson(
        Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$RoomView()
    ..name = json['name'] as String?
    ..localizedName = json['localizedName'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$RoomViewToJson(
        DetailOfferDataMixin$Rooms$Room$RoomView instance) =>
    <String, dynamic>{
      'name': instance.name,
      'localizedName': instance.localizedName,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room$Price
    _$DetailOfferDataMixin$Rooms$Room$PriceFromJson(Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room$Price()
    ..amount = (json['amount'] as num).toDouble()
    ..perPersonAmount = (json['perPersonAmount'] as num?)?.toDouble()
    ..taxAmount = (json['taxAmount'] as num).toDouble()
    ..currency = json['currency'] as String
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$Room$PriceToJson(
        DetailOfferDataMixin$Rooms$Room$Price instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'perPersonAmount': instance.perPersonAmount,
      'taxAmount': instance.taxAmount,
      'currency': instance.currency,
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms$Room _$DetailOfferDataMixin$Rooms$RoomFromJson(
    Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms$Room()
    ..board = json['board'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$Board.fromJson(
            json['board'] as Map<String, dynamic>)
    ..opCode = json['opCode'] as String?
    ..description = json['description'] as String?
    ..nbcAttributes = (json['nbcAttributes'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : DetailOfferDataMixin$Rooms$Room$NbcAttributes.fromJson(
                e as Map<String, dynamic>))
        .toList()
    ..extras = (json['extras'] as List<dynamic>?)
        ?.map((e) => DetailOfferDataMixin$Rooms$Room$Extras.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..extraBeds = json['extraBeds'] as int?
    ..priceByUnit = json['priceByUnit'] as bool?
    ..views = (json['views'] as List<dynamic>?)
        ?.map((e) => DetailOfferDataMixin$Rooms$Room$Views.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..roomKey = json['roomKey'] as String?
    ..mainImage = json['mainImage'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$MainImage.fromJson(
            json['mainImage'] as Map<String, dynamic>)
    ..images = (json['images'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : DetailOfferDataMixin$Rooms$Room$Images.fromJson(
                e as Map<String, dynamic>))
        .toList()
    ..name = json['name'] as String?
    ..localizedName = json['localizedName'] as String?
    ..size = json['size'] as String?
    ..codes = (json['codes'] as List<dynamic>?)
        ?.map((e) => DetailOfferDataMixin$Rooms$Room$Codes.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..roomView = json['roomView'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$RoomView.fromJson(
            json['roomView'] as Map<String, dynamic>)
    ..price = json['price'] == null
        ? null
        : DetailOfferDataMixin$Rooms$Room$Price.fromJson(
            json['price'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$Rooms$RoomToJson(
        DetailOfferDataMixin$Rooms$Room instance) =>
    <String, dynamic>{
      'board': instance.board?.toJson(),
      'opCode': instance.opCode,
      'description': instance.description,
      'nbcAttributes': instance.nbcAttributes?.map((e) => e?.toJson()).toList(),
      'extras': instance.extras?.map((e) => e.toJson()).toList(),
      'extraBeds': instance.extraBeds,
      'priceByUnit': instance.priceByUnit,
      'views': instance.views?.map((e) => e.toJson()).toList(),
      'roomKey': instance.roomKey,
      'mainImage': instance.mainImage?.toJson(),
      'images': instance.images?.map((e) => e?.toJson()).toList(),
      'name': instance.name,
      'localizedName': instance.localizedName,
      'size': instance.size,
      'codes': instance.codes?.map((e) => e.toJson()).toList(),
      'roomView': instance.roomView?.toJson(),
      'price': instance.price?.toJson(),
      '__typename': instance.$$typename,
    };

DetailOfferDataMixin$Rooms _$DetailOfferDataMixin$RoomsFromJson(
    Map<String, dynamic> json) {
  return DetailOfferDataMixin$Rooms()
    ..room = (json['room'] as List<dynamic>?)
        ?.map((e) =>
            DetailOfferDataMixin$Rooms$Room.fromJson(e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$DetailOfferDataMixin$RoomsToJson(
        DetailOfferDataMixin$Rooms instance) =>
    <String, dynamic>{
      'room': instance.room?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

PackageOfferRequestInput _$PackageOfferRequestInputFromJson(
    Map<String, dynamic> json) {
  return PackageOfferRequestInput(
    metaAttributeFilter: json['metaAttributeFilter'] == null
        ? null
        : MetaAttributeFilterInput.fromJson(
            json['metaAttributeFilter'] as Map<String, dynamic>),
    productSearch: ProductSearchInput.fromJson(
        json['productSearch'] as Map<String, dynamic>),
    pagination: json['pagination'] == null
        ? null
        : PagingGroupFilterInput.fromJson(
            json['pagination'] as Map<String, dynamic>),
    sortingOrder: _$enumDecodeNullable(
        _$FilterSortingOrderEnumEnumMap, json['sortingOrder'],
        unknownValue: FilterSortingOrderEnum.artemisUnknown),
  );
}

Map<String, dynamic> _$PackageOfferRequestInputToJson(
        PackageOfferRequestInput instance) =>
    <String, dynamic>{
      'metaAttributeFilter': instance.metaAttributeFilter?.toJson(),
      'productSearch': instance.productSearch.toJson(),
      'pagination': instance.pagination?.toJson(),
      'sortingOrder': _$FilterSortingOrderEnumEnumMap[instance.sortingOrder],
    };

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$FilterSortingOrderEnumEnumMap = {
  FilterSortingOrderEnum.priceAsc: 'PRICE_ASC',
  FilterSortingOrderEnum.priceDesc: 'PRICE_DESC',
  FilterSortingOrderEnum.lengthOfStayAsc: 'LENGTH_OF_STAY_ASC',
  FilterSortingOrderEnum.lengthOfStayDesc: 'LENGTH_OF_STAY_DESC',
  FilterSortingOrderEnum.startDateAsc: 'START_DATE_ASC',
  FilterSortingOrderEnum.startDateDesc: 'START_DATE_DESC',
  FilterSortingOrderEnum.destinationNameAsc: 'DESTINATION_NAME_ASC',
  FilterSortingOrderEnum.destinationNameDesc: 'DESTINATION_NAME_DESC',
  FilterSortingOrderEnum.hotelNameAsc: 'HOTEL_NAME_ASC',
  FilterSortingOrderEnum.hotelNameDesc: 'HOTEL_NAME_DESC',
  FilterSortingOrderEnum.hotelCategoryAsc: 'HOTEL_CATEGORY_ASC',
  FilterSortingOrderEnum.hotelCategoryDesc: 'HOTEL_CATEGORY_DESC',
  FilterSortingOrderEnum.hotelRatingAsc: 'HOTEL_RATING_ASC',
  FilterSortingOrderEnum.hotelRatingDesc: 'HOTEL_RATING_DESC',
  FilterSortingOrderEnum.durationAsc: 'DURATION_ASC',
  FilterSortingOrderEnum.durationDesc: 'DURATION_DESC',
  FilterSortingOrderEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

MetaAttributeFilterInput _$MetaAttributeFilterInputFromJson(
    Map<String, dynamic> json) {
  return MetaAttributeFilterInput(
    currency: json['currency'] as String?,
  );
}

Map<String, dynamic> _$MetaAttributeFilterInputToJson(
        MetaAttributeFilterInput instance) =>
    <String, dynamic>{
      'currency': instance.currency,
    };

ProductSearchInput _$ProductSearchInputFromJson(Map<String, dynamic> json) {
  return ProductSearchInput(
    bookingType: _$enumDecodeNullable(
        _$BookingTypeEnumEnumMap, json['bookingType'],
        unknownValue: BookingTypeEnum.artemisUnknown),
    nodeCodes:
        (json['nodeCodes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    travellersFilter: (json['travellersFilter'] as List<dynamic>?)
        ?.map((e) => TravellerFilterInput.fromJson(e as Map<String, dynamic>))
        .toList(),
    travellersRooms: (json['travellersRooms'] as List<dynamic>?)
        ?.map((e) => TravellersRoomInput.fromJson(e as Map<String, dynamic>))
        .toList(),
    travelPeriod: json['travelPeriod'] == null
        ? null
        : TravelPeriodFilterInput.fromJson(
            json['travelPeriod'] as Map<String, dynamic>),
    priceRangeFilter: json['priceRangeFilter'] == null
        ? null
        : PriceRangeFilterInput.fromJson(
            json['priceRangeFilter'] as Map<String, dynamic>),
    hotelFilter: json['hotelFilter'] == null
        ? null
        : RequestBaseHotelFilterInput.fromJson(
            json['hotelFilter'] as Map<String, dynamic>),
    flightDetailsFilter: json['flightDetailsFilter'] == null
        ? null
        : FlightDetailsFilterInput.fromJson(
            json['flightDetailsFilter'] as Map<String, dynamic>),
    brandFilter: json['brandFilter'] == null
        ? null
        : RequestBaseBrandFilterInput.fromJson(
            json['brandFilter'] as Map<String, dynamic>),
    travelTypeFilter: json['travelTypeFilter'] == null
        ? null
        : TravelTypeFilterInput.fromJson(
            json['travelTypeFilter'] as Map<String, dynamic>),
    transferIncluded: json['transferIncluded'] as bool?,
    discountOnly: json['discountOnly'] as bool?,
    offerIncludes: (json['offerIncludes'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$PackageOfferIncludesEnumEnumMap, e,
            unknownValue: PackageOfferIncludesEnum.artemisUnknown))
        .toList(),
    programType: json['programType'] as String?,
    vouchers:
        (json['vouchers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$ProductSearchInputToJson(ProductSearchInput instance) =>
    <String, dynamic>{
      'bookingType': _$BookingTypeEnumEnumMap[instance.bookingType],
      'nodeCodes': instance.nodeCodes,
      'travellersFilter':
          instance.travellersFilter?.map((e) => e.toJson()).toList(),
      'travellersRooms':
          instance.travellersRooms?.map((e) => e.toJson()).toList(),
      'travelPeriod': instance.travelPeriod?.toJson(),
      'priceRangeFilter': instance.priceRangeFilter?.toJson(),
      'hotelFilter': instance.hotelFilter?.toJson(),
      'flightDetailsFilter': instance.flightDetailsFilter?.toJson(),
      'brandFilter': instance.brandFilter?.toJson(),
      'travelTypeFilter': instance.travelTypeFilter?.toJson(),
      'transferIncluded': instance.transferIncluded,
      'discountOnly': instance.discountOnly,
      'offerIncludes': instance.offerIncludes
          ?.map((e) => _$PackageOfferIncludesEnumEnumMap[e])
          .toList(),
      'programType': instance.programType,
      'vouchers': instance.vouchers,
    };

const _$BookingTypeEnumEnumMap = {
  BookingTypeEnum.package: 'PACKAGE',
  BookingTypeEnum.hotelOnly: 'HOTEL_ONLY',
  BookingTypeEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$PackageOfferIncludesEnumEnumMap = {
  PackageOfferIncludesEnum.entrance: 'ENTRANCE',
  PackageOfferIncludesEnum.excursion: 'EXCURSION',
  PackageOfferIncludesEnum.freeCancellation: 'FREE_CANCELLATION',
  PackageOfferIncludesEnum.freeRebooking: 'FREE_REBOOKING',
  PackageOfferIncludesEnum.golfPass: 'GOLF_PASS',
  PackageOfferIncludesEnum.railAndFly: 'RAIL_AND_FLY',
  PackageOfferIncludesEnum.rentalCar: 'RENTAL_CAR',
  PackageOfferIncludesEnum.skiPass: 'SKI_PASS',
  PackageOfferIncludesEnum.sport: 'SPORT',
  PackageOfferIncludesEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

TravellerFilterInput _$TravellerFilterInputFromJson(Map<String, dynamic> json) {
  return TravellerFilterInput(
    age: json['age'] as int,
    refId: json['refId'] as int?,
  );
}

Map<String, dynamic> _$TravellerFilterInputToJson(
        TravellerFilterInput instance) =>
    <String, dynamic>{
      'age': instance.age,
      'refId': instance.refId,
    };

TravellersRoomInput _$TravellersRoomInputFromJson(Map<String, dynamic> json) {
  return TravellersRoomInput(
    refIds: (json['refIds'] as List<dynamic>).map((e) => e as int).toList(),
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$TravellersRoomInputToJson(
        TravellersRoomInput instance) =>
    <String, dynamic>{
      'refIds': instance.refIds,
      'id': instance.id,
    };

TravelPeriodFilterInput _$TravelPeriodFilterInputFromJson(
    Map<String, dynamic> json) {
  return TravelPeriodFilterInput(
    departureDateTime: json['departureDateTime'] == null
        ? null
        : DateTimeRangeFilterInput.fromJson(
            json['departureDateTime'] as Map<String, dynamic>),
    returnDateTime: json['returnDateTime'] == null
        ? null
        : DateTimeRangeFilterInput.fromJson(
            json['returnDateTime'] as Map<String, dynamic>),
    minDuration: json['minDuration'] as int,
    maxDuration: json['maxDuration'] as int,
    durationKind: _$enumDecodeNullable(
        _$TravelPeriodFilterDurationKindEnumEnumMap, json['durationKind'],
        unknownValue: TravelPeriodFilterDurationKindEnum.artemisUnknown),
  );
}

Map<String, dynamic> _$TravelPeriodFilterInputToJson(
        TravelPeriodFilterInput instance) =>
    <String, dynamic>{
      'departureDateTime': instance.departureDateTime?.toJson(),
      'returnDateTime': instance.returnDateTime?.toJson(),
      'minDuration': instance.minDuration,
      'maxDuration': instance.maxDuration,
      'durationKind':
          _$TravelPeriodFilterDurationKindEnumEnumMap[instance.durationKind],
    };

const _$TravelPeriodFilterDurationKindEnumEnumMap = {
  TravelPeriodFilterDurationKindEnum.hotel: 'HOTEL',
  TravelPeriodFilterDurationKindEnum.flight: 'FLIGHT',
  TravelPeriodFilterDurationKindEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

DateTimeRangeFilterInput _$DateTimeRangeFilterInputFromJson(
    Map<String, dynamic> json) {
  return DateTimeRangeFilterInput(
    dateRangeFilter: json['dateRangeFilter'] == null
        ? null
        : DateRangeFilterInput.fromJson(
            json['dateRangeFilter'] as Map<String, dynamic>),
    timeRangeFilter: json['timeRangeFilter'] == null
        ? null
        : TimeRangeFilterInput.fromJson(
            json['timeRangeFilter'] as Map<String, dynamic>),
    daysOfWeek: (json['daysOfWeek'] as List<dynamic>?)
        ?.map((e) => _$enumDecodeNullable(_$DayOfWeekFilterInputEnumMap, e,
            unknownValue: DayOfWeekFilterInput.artemisUnknown))
        .toList(),
  );
}

Map<String, dynamic> _$DateTimeRangeFilterInputToJson(
        DateTimeRangeFilterInput instance) =>
    <String, dynamic>{
      'dateRangeFilter': instance.dateRangeFilter?.toJson(),
      'timeRangeFilter': instance.timeRangeFilter?.toJson(),
      'daysOfWeek': instance.daysOfWeek
          ?.map((e) => _$DayOfWeekFilterInputEnumMap[e])
          .toList(),
    };

const _$DayOfWeekFilterInputEnumMap = {
  DayOfWeekFilterInput.sun: 'SUN',
  DayOfWeekFilterInput.mon: 'MON',
  DayOfWeekFilterInput.tue: 'TUE',
  DayOfWeekFilterInput.wed: 'WED',
  DayOfWeekFilterInput.thu: 'THU',
  DayOfWeekFilterInput.fri: 'FRI',
  DayOfWeekFilterInput.sat: 'SAT',
  DayOfWeekFilterInput.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

DateRangeFilterInput _$DateRangeFilterInputFromJson(Map<String, dynamic> json) {
  return DateRangeFilterInput(
    minDate: json['minDate'] == null
        ? null
        : DateTime.parse(json['minDate'] as String),
    maxDate: json['maxDate'] == null
        ? null
        : DateTime.parse(json['maxDate'] as String),
  );
}

Map<String, dynamic> _$DateRangeFilterInputToJson(
        DateRangeFilterInput instance) =>
    <String, dynamic>{
      'minDate': instance.minDate?.toIso8601String().substring(0,10),
      'maxDate': instance.maxDate?.toIso8601String().substring(0,10),
    };

TimeRangeFilterInput _$TimeRangeFilterInputFromJson(Map<String, dynamic> json) {
  return TimeRangeFilterInput(
    minTime: json['minTime'] as String?,
    maxTime: json['maxTime'] as String?,
  );
}

Map<String, dynamic> _$TimeRangeFilterInputToJson(
        TimeRangeFilterInput instance) =>
    <String, dynamic>{
      'minTime': instance.minTime,
      'maxTime': instance.maxTime,
    };

PriceRangeFilterInput _$PriceRangeFilterInputFromJson(
    Map<String, dynamic> json) {
  return PriceRangeFilterInput(
    minPrice: json['minPrice'] as int,
    maxPrice: json['maxPrice'] as int,
  );
}

Map<String, dynamic> _$PriceRangeFilterInputToJson(
        PriceRangeFilterInput instance) =>
    <String, dynamic>{
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
    };

RequestBaseHotelFilterInput _$RequestBaseHotelFilterInputFromJson(
    Map<String, dynamic> json) {
  return RequestBaseHotelFilterInput(
    ratings: (json['ratings'] as List<dynamic>?)
        ?.map((e) => RatingFilterInput.fromJson(e as Map<String, dynamic>))
        .toList(),
    hotelAttributesFilter: json['hotelAttributesFilter'] == null
        ? null
        : HotelAttributesFilterInput.fromJson(
            json['hotelAttributesFilter'] as Map<String, dynamic>),
    hotelLanguagesFilter: json['hotelLanguagesFilter'] == null
        ? null
        : HotelLanguagesFilterInput.fromJson(
            json['hotelLanguagesFilter'] as Map<String, dynamic>),
    hotelActivitiesFilter: json['hotelActivitiesFilter'] == null
        ? null
        : HotelActivitiesFilterInput.fromJson(
            json['hotelActivitiesFilter'] as Map<String, dynamic>),
    hotelCategoryFilter: json['hotelCategoryFilter'] == null
        ? null
        : HotelCategoryFilterInput.fromJson(
            json['hotelCategoryFilter'] as Map<String, dynamic>),
    minCategory: (json['minCategory'] as num?)?.toDouble(),
    maxCategory: (json['maxCategory'] as num?)?.toDouble(),
    roomCodes:
        (json['roomCodes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    roomAttributes: (json['roomAttributes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    roomViews:
        (json['roomViews'] as List<dynamic>?)?.map((e) => e as String).toList(),
    boardCodes: (json['boardCodes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    hotelNames: (json['hotelNames'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    productCodes: (json['productCodes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    references: (json['references'] as List<dynamic>?)
        ?.map((e) => HotelReferenceInput.fromJson(e as Map<String, dynamic>))
        .toList(),
    roomOpCode: json['roomOpCode'] as String?,
  );
}

Map<String, dynamic> _$RequestBaseHotelFilterInputToJson(
        RequestBaseHotelFilterInput instance) =>
    <String, dynamic>{
      'ratings': instance.ratings?.map((e) => e.toJson()).toList(),
      'hotelAttributesFilter': instance.hotelAttributesFilter?.toJson(),
      'hotelLanguagesFilter': instance.hotelLanguagesFilter?.toJson(),
      'hotelActivitiesFilter': instance.hotelActivitiesFilter?.toJson(),
      'hotelCategoryFilter': instance.hotelCategoryFilter?.toJson(),
      'minCategory': instance.minCategory,
      'maxCategory': instance.maxCategory,
      'roomCodes': instance.roomCodes,
      'roomAttributes': instance.roomAttributes,
      'roomViews': instance.roomViews,
      'boardCodes': instance.boardCodes,
      'hotelNames': instance.hotelNames,
      'productCodes': instance.productCodes,
      'references': instance.references?.map((e) => e.toJson()).toList(),
      'roomOpCode': instance.roomOpCode,
    };

RatingFilterInput _$RatingFilterInputFromJson(Map<String, dynamic> json) {
  return RatingFilterInput(
    code: _$enumDecode(_$RatingFilterCodeEnumEnumMap, json['code'],
        unknownValue: RatingFilterCodeEnum.artemisUnknown),
    value: json['value'] as int,
    kw$operator: _$enumDecodeNullable(
        _$RatingFilterOperatorEnumEnumMap, json['operator'],
        unknownValue: RatingFilterOperatorEnum.artemisUnknown),
    normalized: json['normalized'] as bool?,
    normalizedRange: json['normalizedRange'] == null
        ? null
        : NormalizedRangeInput.fromJson(
            json['normalizedRange'] as Map<String, dynamic>),
    provider: _$enumDecodeNullable(_$RatingProviderEnumMap, json['provider'],
        unknownValue: RatingProvider.artemisUnknown),
  );
}

Map<String, dynamic> _$RatingFilterInputToJson(RatingFilterInput instance) =>
    <String, dynamic>{
      'code': _$RatingFilterCodeEnumEnumMap[instance.code],
      'value': instance.value,
      'operator': _$RatingFilterOperatorEnumEnumMap[instance.kw$operator],
      'normalized': instance.normalized,
      'normalizedRange': instance.normalizedRange?.toJson(),
      'provider': _$RatingProviderEnumMap[instance.provider],
    };

const _$RatingFilterCodeEnumEnumMap = {
  RatingFilterCodeEnum.averageRating: 'averageRating',
  RatingFilterCodeEnum.ratingCount: 'ratingCount',
  RatingFilterCodeEnum.recommendationRate: 'recommendationRate',
  RatingFilterCodeEnum.ratingBusiness: 'ratingBusiness',
  RatingFilterCodeEnum.ratingCouple: 'ratingCouple',
  RatingFilterCodeEnum.ratingFamily: 'ratingFamily',
  RatingFilterCodeEnum.ratingSolo: 'ratingSolo',
  RatingFilterCodeEnum.scoreBeachAll: 'scoreBeachAll',
  RatingFilterCodeEnum.scoreFoodAll: 'scoreFoodAll',
  RatingFilterCodeEnum.scoreLocationAll: 'scoreLocationAll',
  RatingFilterCodeEnum.scoreRoomAll: 'scoreRoomAll',
  RatingFilterCodeEnum.scoreServiceAll: 'scoreServiceAll',
  RatingFilterCodeEnum.scoreFoodBusiness: 'scoreFoodBusiness',
  RatingFilterCodeEnum.scoreLocationBusiness: 'scoreLocationBusiness',
  RatingFilterCodeEnum.scoreRoomBusiness: 'scoreRoomBusiness',
  RatingFilterCodeEnum.scoreServiceBusiness: 'scoreServiceBusiness',
  RatingFilterCodeEnum.scoreBeachCouple: 'scoreBeachCouple',
  RatingFilterCodeEnum.scoreFoodCouple: 'scoreFoodCouple',
  RatingFilterCodeEnum.scoreLocationCouple: 'scoreLocationCouple',
  RatingFilterCodeEnum.scoreRoomCouple: 'scoreRoomCouple',
  RatingFilterCodeEnum.scoreServiceCouple: 'scoreServiceCouple',
  RatingFilterCodeEnum.scoreBeachFamily: 'scoreBeachFamily',
  RatingFilterCodeEnum.scoreFoodFamily: 'scoreFoodFamily',
  RatingFilterCodeEnum.scoreLocationFamily: 'scoreLocationFamily',
  RatingFilterCodeEnum.scoreRoomFamily: 'scoreRoomFamily',
  RatingFilterCodeEnum.scoreServiceFamily: 'scoreServiceFamily',
  RatingFilterCodeEnum.scoreBeachSolo: 'scoreBeachSolo',
  RatingFilterCodeEnum.scoreFoodSolo: 'scoreFoodSolo',
  RatingFilterCodeEnum.scoreLocationSolo: 'scoreLocationSolo',
  RatingFilterCodeEnum.scoreRoomSolo: 'scoreRoomSolo',
  RatingFilterCodeEnum.scoreServiceSolo: 'scoreServiceSolo',
  RatingFilterCodeEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$RatingFilterOperatorEnumEnumMap = {
  RatingFilterOperatorEnum.eq: 'EQ',
  RatingFilterOperatorEnum.lt: 'LT',
  RatingFilterOperatorEnum.gt: 'GT',
  RatingFilterOperatorEnum.le: 'LE',
  RatingFilterOperatorEnum.ge: 'GE',
  RatingFilterOperatorEnum.ne: 'NE',
  RatingFilterOperatorEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$RatingProviderEnumMap = {
  RatingProvider.kw$default: 'default',
  RatingProvider.trustyou: 'trustyou',
  RatingProvider.tripadvisor: 'tripadvisor',
  RatingProvider.holidayCheck: 'HolidayCheck',
  RatingProvider.noopProvider: 'noop_provider',
  RatingProvider.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

NormalizedRangeInput _$NormalizedRangeInputFromJson(Map<String, dynamic> json) {
  return NormalizedRangeInput(
    min: json['min'] as int,
    max: json['max'] as int,
  );
}

Map<String, dynamic> _$NormalizedRangeInputToJson(
        NormalizedRangeInput instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

HotelAttributesFilterInput _$HotelAttributesFilterInputFromJson(
    Map<String, dynamic> json) {
  return HotelAttributesFilterInput(
    kw$operator: _$enumDecodeNullable(
        _$HotelAttributesFilterOperatorEnumEnumMap, json['operator'],
        unknownValue: HotelAttributesFilterOperatorEnum.artemisUnknown),
    hotelAttributes: (json['hotelAttributes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$HotelAttributesFilterInputToJson(
        HotelAttributesFilterInput instance) =>
    <String, dynamic>{
      'operator':
          _$HotelAttributesFilterOperatorEnumEnumMap[instance.kw$operator],
      'hotelAttributes': instance.hotelAttributes,
    };

const _$HotelAttributesFilterOperatorEnumEnumMap = {
  HotelAttributesFilterOperatorEnum.and: 'AND',
  HotelAttributesFilterOperatorEnum.or: 'OR',
  HotelAttributesFilterOperatorEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

HotelLanguagesFilterInput _$HotelLanguagesFilterInputFromJson(
    Map<String, dynamic> json) {
  return HotelLanguagesFilterInput(
    kw$operator: _$enumDecodeNullable(
        _$HotelAttributesFilterOperatorEnumEnumMap, json['operator'],
        unknownValue: HotelAttributesFilterOperatorEnum.artemisUnknown),
    hotelLanguages: (json['hotelLanguages'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$HotelLanguagesFilterInputToJson(
        HotelLanguagesFilterInput instance) =>
    <String, dynamic>{
      'operator':
          _$HotelAttributesFilterOperatorEnumEnumMap[instance.kw$operator],
      'hotelLanguages': instance.hotelLanguages,
    };

HotelActivitiesFilterInput _$HotelActivitiesFilterInputFromJson(
    Map<String, dynamic> json) {
  return HotelActivitiesFilterInput(
    kw$operator: _$enumDecodeNullable(
        _$HotelAttributesFilterOperatorEnumEnumMap, json['operator'],
        unknownValue: HotelAttributesFilterOperatorEnum.artemisUnknown),
    hotelActivities: (json['hotelActivities'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$HotelActivitiesFilterInputToJson(
        HotelActivitiesFilterInput instance) =>
    <String, dynamic>{
      'operator':
          _$HotelAttributesFilterOperatorEnumEnumMap[instance.kw$operator],
      'hotelActivities': instance.hotelActivities,
    };

HotelCategoryFilterInput _$HotelCategoryFilterInputFromJson(
    Map<String, dynamic> json) {
  return HotelCategoryFilterInput(
    hotelCategoriesRange: json['hotelCategoriesRange'] == null
        ? null
        : HotelCategoryRangeFilterInput.fromJson(
            json['hotelCategoriesRange'] as Map<String, dynamic>),
    hotelOfferCategoriesRange: json['hotelOfferCategoriesRange'] == null
        ? null
        : HotelCategoryRangeFilterInput.fromJson(
            json['hotelOfferCategoriesRange'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HotelCategoryFilterInputToJson(
        HotelCategoryFilterInput instance) =>
    <String, dynamic>{
      'hotelCategoriesRange': instance.hotelCategoriesRange?.toJson(),
      'hotelOfferCategoriesRange': instance.hotelOfferCategoriesRange?.toJson(),
    };

HotelCategoryRangeFilterInput _$HotelCategoryRangeFilterInputFromJson(
    Map<String, dynamic> json) {
  return HotelCategoryRangeFilterInput(
    minCategory: (json['minCategory'] as num?)?.toDouble(),
    maxCategory: (json['maxCategory'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$HotelCategoryRangeFilterInputToJson(
        HotelCategoryRangeFilterInput instance) =>
    <String, dynamic>{
      'minCategory': instance.minCategory,
      'maxCategory': instance.maxCategory,
    };

HotelReferenceInput _$HotelReferenceInputFromJson(Map<String, dynamic> json) {
  return HotelReferenceInput(
    hotelCodes:
        (json['hotelCodes'] as List<dynamic>?)?.map((e) => e as int).toList(),
    codeType: _$enumDecodeNullable(
        _$HotelReferenceCodeTypeEnumEnumMap, json['codeType'],
        unknownValue: HotelReferenceCodeTypeEnum.artemisUnknown),
  );
}

Map<String, dynamic> _$HotelReferenceInputToJson(
        HotelReferenceInput instance) =>
    <String, dynamic>{
      'hotelCodes': instance.hotelCodes,
      'codeType': _$HotelReferenceCodeTypeEnumEnumMap[instance.codeType],
    };

const _$HotelReferenceCodeTypeEnumEnumMap = {
  HotelReferenceCodeTypeEnum.giata: 'GIATA',
  HotelReferenceCodeTypeEnum.iff: 'IFF',
  HotelReferenceCodeTypeEnum.opic: 'OPIC',
  HotelReferenceCodeTypeEnum.drv: 'DRV',
  HotelReferenceCodeTypeEnum.icmsId: 'ICMS_ID',
  HotelReferenceCodeTypeEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

FlightDetailsFilterInput _$FlightDetailsFilterInputFromJson(
    Map<String, dynamic> json) {
  return FlightDetailsFilterInput(
    departureAirports: json['departureAirports'] == null
        ? null
        : InvertibleAirportCodeFilterInput.fromJson(
            json['departureAirports'] as Map<String, dynamic>),
    arrivalAirports: json['arrivalAirports'] == null
        ? null
        : InvertibleAirportCodeFilterInput.fromJson(
            json['arrivalAirports'] as Map<String, dynamic>),
    airlines: json['airlines'] == null
        ? null
        : FlightDetailsFilterAirlinesInput.fromJson(
            json['airlines'] as Map<String, dynamic>),
    maxFlightDurationMinutes: json['maxFlightDurationMinutes'] as int?,
    maxNumberOfStops: json['maxNumberOfStops'] as int?,
    cabinClassFilter: (json['cabinClassFilter'] as List<dynamic>?)
        ?.map((e) => _$enumDecodeNullable(_$CabinClassFilterInputEnumMap, e,
            unknownValue: CabinClassFilterInput.artemisUnknown))
        .toList(),
  );
}

Map<String, dynamic> _$FlightDetailsFilterInputToJson(
        FlightDetailsFilterInput instance) =>
    <String, dynamic>{
      'departureAirports': instance.departureAirports?.toJson(),
      'arrivalAirports': instance.arrivalAirports?.toJson(),
      'airlines': instance.airlines?.toJson(),
      'maxFlightDurationMinutes': instance.maxFlightDurationMinutes,
      'maxNumberOfStops': instance.maxNumberOfStops,
      'cabinClassFilter': instance.cabinClassFilter
          ?.map((e) => _$CabinClassFilterInputEnumMap[e])
          .toList(),
    };

const _$CabinClassFilterInputEnumMap = {
  CabinClassFilterInput.f: 'F',
  CabinClassFilterInput.j: 'J',
  CabinClassFilterInput.w: 'W',
  CabinClassFilterInput.y: 'Y',
  CabinClassFilterInput.u: 'U',
  CabinClassFilterInput.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

InvertibleAirportCodeFilterInput _$InvertibleAirportCodeFilterInputFromJson(
    Map<String, dynamic> json) {
  return InvertibleAirportCodeFilterInput(
    airportCodes: (json['airportCodes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    inverted: json['inverted'] as bool,
  );
}

Map<String, dynamic> _$InvertibleAirportCodeFilterInputToJson(
        InvertibleAirportCodeFilterInput instance) =>
    <String, dynamic>{
      'airportCodes': instance.airportCodes,
      'inverted': instance.inverted,
    };

FlightDetailsFilterAirlinesInput _$FlightDetailsFilterAirlinesInputFromJson(
    Map<String, dynamic> json) {
  return FlightDetailsFilterAirlinesInput(
    airlineCodes: (json['airlineCodes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    inverted: json['inverted'] as bool,
  );
}

Map<String, dynamic> _$FlightDetailsFilterAirlinesInputToJson(
        FlightDetailsFilterAirlinesInput instance) =>
    <String, dynamic>{
      'airlineCodes': instance.airlineCodes,
      'inverted': instance.inverted,
    };

RequestBaseBrandFilterInput _$RequestBaseBrandFilterInputFromJson(
    Map<String, dynamic> json) {
  return RequestBaseBrandFilterInput(
    tourOperatorCodes: (json['tourOperatorCodes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    filterMode: _$enumDecodeNullable(
        _$RequestBaseBrandFilterFilterModeEnumEnumMap, json['filterMode'],
        unknownValue: RequestBaseBrandFilterFilterModeEnum.artemisUnknown),
  );
}

Map<String, dynamic> _$RequestBaseBrandFilterInputToJson(
        RequestBaseBrandFilterInput instance) =>
    <String, dynamic>{
      'tourOperatorCodes': instance.tourOperatorCodes,
      'filterMode':
          _$RequestBaseBrandFilterFilterModeEnumEnumMap[instance.filterMode],
    };

const _$RequestBaseBrandFilterFilterModeEnumEnumMap = {
  RequestBaseBrandFilterFilterModeEnum.include: 'INCLUDE',
  RequestBaseBrandFilterFilterModeEnum.exclude: 'EXCLUDE',
  RequestBaseBrandFilterFilterModeEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

TravelTypeFilterInput _$TravelTypeFilterInputFromJson(
    Map<String, dynamic> json) {
  return TravelTypeFilterInput(
    filterMode: _$enumDecodeNullable(
        _$TravelTypeFilterFilterModeEnumEnumMap, json['filterMode'],
        unknownValue: TravelTypeFilterFilterModeEnum.artemisUnknown),
    travelType: json['travelType'] as String,
  );
}

Map<String, dynamic> _$TravelTypeFilterInputToJson(
        TravelTypeFilterInput instance) =>
    <String, dynamic>{
      'filterMode':
          _$TravelTypeFilterFilterModeEnumEnumMap[instance.filterMode],
      'travelType': instance.travelType,
    };

const _$TravelTypeFilterFilterModeEnumEnumMap = {
  TravelTypeFilterFilterModeEnum.include: 'INCLUDE',
  TravelTypeFilterFilterModeEnum.exclude: 'EXCLUDE',
  TravelTypeFilterFilterModeEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

PagingGroupFilterInput _$PagingGroupFilterInputFromJson(
    Map<String, dynamic> json) {
  return PagingGroupFilterInput(
    type: json['type'] as String?,
    resultsTotal: json['resultsTotal'] as int?,
    showingResultsFrom: json['showingResultsFrom'] as int?,
    resultsPerPage: json['resultsPerPage'] as int?,
  );
}

Map<String, dynamic> _$PagingGroupFilterInputToJson(
        PagingGroupFilterInput instance) =>
    <String, dynamic>{
      'type': instance.type,
      'resultsTotal': instance.resultsTotal,
      'showingResultsFrom': instance.showingResultsFrom,
      'resultsPerPage': instance.resultsPerPage,
    };

GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2x
    _$GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2xFromJson(
        Map<String, dynamic> json) {
  return GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2x()
    ..url = json['url'] as String?;
}

Map<String, dynamic>
    _$GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2xToJson(
            GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2x
                instance) =>
        <String, dynamic>{
          'url': instance.url,
        };

GetRoomOverview$Query$RoomOverview$Rooms$MainImage
    _$GetRoomOverview$Query$RoomOverview$Rooms$MainImageFromJson(
        Map<String, dynamic> json) {
  return GetRoomOverview$Query$RoomOverview$Rooms$MainImage()
    ..default2x = json['default2x'] == null
        ? null
        : GetRoomOverview$Query$RoomOverview$Rooms$MainImage$Default2x.fromJson(
            json['default2x'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetRoomOverview$Query$RoomOverview$Rooms$MainImageToJson(
        GetRoomOverview$Query$RoomOverview$Rooms$MainImage instance) =>
    <String, dynamic>{
      'default2x': instance.default2x?.toJson(),
    };

GetRoomOverview$Query$RoomOverview$Rooms$RoomView
    _$GetRoomOverview$Query$RoomOverview$Rooms$RoomViewFromJson(
        Map<String, dynamic> json) {
  return GetRoomOverview$Query$RoomOverview$Rooms$RoomView()
    ..name = json['name'] as String?
    ..localizedName = json['localizedName'] as String?;
}

Map<String, dynamic> _$GetRoomOverview$Query$RoomOverview$Rooms$RoomViewToJson(
        GetRoomOverview$Query$RoomOverview$Rooms$RoomView instance) =>
    <String, dynamic>{
      'name': instance.name,
      'localizedName': instance.localizedName,
    };

GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributes
    _$GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributesFromJson(
        Map<String, dynamic> json) {
  return GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributes()
    ..code = json['code'] as String?
    ..icon = json['icon'] as String?
    ..name = json['name'] as String?
    ..localizedName = json['localizedName'] as String?;
}

Map<String, dynamic>
    _$GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributesToJson(
            GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributes instance) =>
        <String, dynamic>{
          'code': instance.code,
          'icon': instance.icon,
          'name': instance.name,
          'localizedName': instance.localizedName,
        };

GetRoomOverview$Query$RoomOverview$Rooms
    _$GetRoomOverview$Query$RoomOverview$RoomsFromJson(
        Map<String, dynamic> json) {
  return GetRoomOverview$Query$RoomOverview$Rooms()
    ..mainImage = json['mainImage'] == null
        ? null
        : GetRoomOverview$Query$RoomOverview$Rooms$MainImage.fromJson(
            json['mainImage'] as Map<String, dynamic>)
    ..providerId = json['providerId'] as String?
    ..name = json['name'] as String?
    ..localizedName = json['localizedName'] as String?
    ..description = json['description'] as String?
    ..size = json['size'] as String?
    ..roomView = json['roomView'] == null
        ? null
        : GetRoomOverview$Query$RoomOverview$Rooms$RoomView.fromJson(
            json['roomView'] as Map<String, dynamic>)
    ..nbcAttributes = (json['nbcAttributes'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : GetRoomOverview$Query$RoomOverview$Rooms$NbcAttributes.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$GetRoomOverview$Query$RoomOverview$RoomsToJson(
        GetRoomOverview$Query$RoomOverview$Rooms instance) =>
    <String, dynamic>{
      'mainImage': instance.mainImage?.toJson(),
      'providerId': instance.providerId,
      'name': instance.name,
      'localizedName': instance.localizedName,
      'description': instance.description,
      'size': instance.size,
      'roomView': instance.roomView?.toJson(),
      'nbcAttributes': instance.nbcAttributes?.map((e) => e?.toJson()).toList(),
    };

GetRoomOverview$Query$RoomOverview _$GetRoomOverview$Query$RoomOverviewFromJson(
    Map<String, dynamic> json) {
  return GetRoomOverview$Query$RoomOverview()
    ..localizedDescription = json['localizedDescription'] as String?
    ..description = json['description'] as String?
    ..rooms = (json['rooms'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : GetRoomOverview$Query$RoomOverview$Rooms.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$GetRoomOverview$Query$RoomOverviewToJson(
        GetRoomOverview$Query$RoomOverview instance) =>
    <String, dynamic>{
      'localizedDescription': instance.localizedDescription,
      'description': instance.description,
      'rooms': instance.rooms?.map((e) => e?.toJson()).toList(),
    };

GetRoomOverview$Query _$GetRoomOverview$QueryFromJson(
    Map<String, dynamic> json) {
  return GetRoomOverview$Query()
    ..roomOverview = json['roomOverview'] == null
        ? null
        : GetRoomOverview$Query$RoomOverview.fromJson(
            json['roomOverview'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetRoomOverview$QueryToJson(
        GetRoomOverview$Query instance) =>
    <String, dynamic>{
      'roomOverview': instance.roomOverview?.toJson(),
    };

AddToFavorites$Mutation _$AddToFavorites$MutationFromJson(
    Map<String, dynamic> json) {
  return AddToFavorites$Mutation()..result = json['result'] as bool?;
}

Map<String, dynamic> _$AddToFavorites$MutationToJson(
        AddToFavorites$Mutation instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

OfferInput _$OfferInputFromJson(Map<String, dynamic> json) {
  return OfferInput(
    hash: json['hash'] as String,
    offerData: json['offerData'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$OfferInputToJson(OfferInput instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'offerData': instance.offerData,
    };

ProductsQuery$Query$Products$Pagination
    _$ProductsQuery$Query$Products$PaginationFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$Pagination()
    ..resultsPerPage = json['resultsPerPage'] as int
    ..resultsTotal = json['resultsTotal'] as int
    ..showingResultsFrom = json['showingResultsFrom'] as int
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$ProductsQuery$Query$Products$PaginationToJson(
        ProductsQuery$Query$Products$Pagination instance) =>
    <String, dynamic>{
      'resultsPerPage': instance.resultsPerPage,
      'resultsTotal': instance.resultsTotal,
      'showingResultsFrom': instance.showingResultsFrom,
      '__typename': instance.$$typename,
    };

ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$Sections
    _$ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$SectionsFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$Sections()
    ..name = json['name'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$SectionsToJson(
            ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$Sections
                instance) =>
        <String, dynamic>{
          'name': instance.name,
        };

ProductsQuery$Query$Products$PackageProducts$HotelContent$Description
    _$ProductsQuery$Query$Products$PackageProducts$HotelContent$DescriptionFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$HotelContent$Description()
    ..full = json['full'] as String?
    ..sections = (json['sections'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : ProductsQuery$Query$Products$PackageProducts$HotelContent$Description$Sections
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$HotelContent$DescriptionToJson(
            ProductsQuery$Query$Products$PackageProducts$HotelContent$Description
                instance) =>
        <String, dynamic>{
          'full': instance.full,
          'sections': instance.sections?.map((e) => e?.toJson()).toList(),
        };

ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$Sizes
    _$ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$SizesFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$Sizes()
    ..url = json['url'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$SizesToJson(
            ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$Sizes
                instance) =>
        <String, dynamic>{
          'url': instance.url,
        };

ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo
    _$ProductsQuery$Query$Products$PackageProducts$HotelContent$LogoFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo()
    ..sizes = (json['sizes'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo$Sizes
                .fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$HotelContent$LogoToJson(
            ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo
                instance) =>
        <String, dynamic>{
          'sizes': instance.sizes?.map((e) => e?.toJson()).toList(),
        };

ProductsQuery$Query$Products$PackageProducts$HotelContent$Climate
    _$ProductsQuery$Query$Products$PackageProducts$HotelContent$ClimateFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$HotelContent$Climate()
    ..avgAirTemp = json['avgAirTemp'] as int?
    ..avgWaterTemp = json['avgWaterTemp'] as int?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$HotelContent$ClimateToJson(
            ProductsQuery$Query$Products$PackageProducts$HotelContent$Climate
                instance) =>
        <String, dynamic>{
          'avgAirTemp': instance.avgAirTemp,
          'avgWaterTemp': instance.avgWaterTemp,
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$HotelContent
    _$ProductsQuery$Query$Products$PackageProducts$HotelContentFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$HotelContent()
    ..mainImage = json['mainImage'] == null
        ? null
        : BaseImagesMixin$MainImage.fromJson(
            json['mainImage'] as Map<String, dynamic>)
    ..images = (json['images'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : BaseImagesMixin$Images.fromJson(e as Map<String, dynamic>))
        .toList()
    ..description = json['description'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$HotelContent$Description
            .fromJson(json['description'] as Map<String, dynamic>)
    ..logo = json['logo'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$HotelContent$Logo
            .fromJson(json['logo'] as Map<String, dynamic>)
    ..crsCode = json['crsCode'] as String?
    ..timeToAirport = json['timeToAirport'] as int?
    ..distanceToAirport = (json['distanceToAirport'] as num?)?.toDouble()
    ..distanceToBeach = (json['distanceToBeach'] as num?)?.toDouble()
    ..climate = json['climate'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$HotelContent$Climate
            .fromJson(json['climate'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String,
    dynamic> _$ProductsQuery$Query$Products$PackageProducts$HotelContentToJson(
        ProductsQuery$Query$Products$PackageProducts$HotelContent instance) =>
    <String, dynamic>{
      'mainImage': instance.mainImage?.toJson(),
      'images': instance.images?.map((e) => e?.toJson()).toList(),
      'description': instance.description?.toJson(),
      'logo': instance.logo?.toJson(),
      'crsCode': instance.crsCode,
      'timeToAirport': instance.timeToAirport,
      'distanceToAirport': instance.distanceToAirport,
      'distanceToBeach': instance.distanceToBeach,
      'climate': instance.climate?.toJson(),
      '__typename': instance.$$typename,
    };

ProductsQuery$Query$Products$PackageProducts$ShipContent
    _$ProductsQuery$Query$Products$PackageProducts$ShipContentFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$ShipContent()
    ..mainImage = json['mainImage'] == null
        ? null
        : BaseShipImagesMixin$MainImage.fromJson(
            json['mainImage'] as Map<String, dynamic>)
    ..images = (json['images'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : BaseShipImagesMixin$Images.fromJson(e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String,
    dynamic> _$ProductsQuery$Query$Products$PackageProducts$ShipContentToJson(
        ProductsQuery$Query$Products$PackageProducts$ShipContent instance) =>
    <String, dynamic>{
      'mainImage': instance.mainImage?.toJson(),
      'images': instance.images?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$$typename,
    };

ProductsQuery$Query$Products$PackageProducts$TopOffer
    _$ProductsQuery$Query$Products$PackageProducts$TopOfferFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$TopOffer()
    ..sourceCode = json['sourceCode'] as String?
    ..hash = json['hash'] as String
    ..isInFavorites = json['isInFavorites'] as bool
    ..hotelOfferCategory = (json['hotelOfferCategory'] as num?)?.toDouble()
    ..lengthOfStay = json['lengthOfStay'] as int
    ..offerStartDate = json['offerStartDate'] == null
        ? null
        : DateTime.parse(json['offerStartDate'] as String)
    ..hotelContentId = json['hotelContentId'] as Map<String, dynamic>
    ..tourOperator = json['tourOperator'] == null
        ? null
        : TsbobCollectionOfferFieldsMixin$TourOperator.fromJson(
            json['tourOperator'] as Map<String, dynamic>)
    ..offerStart = TsbobCollectionOfferFieldsMixin$OfferStart.fromJson(
        json['offerStart'] as Map<String, dynamic>)
    ..offerEnd = TsbobCollectionOfferFieldsMixin$OfferEnd.fromJson(
        json['offerEnd'] as Map<String, dynamic>)
    ..rooms = json['rooms'] == null
        ? null
        : TsbobCollectionOfferFieldsMixin$Rooms.fromJson(
            json['rooms'] as Map<String, dynamic>)
    ..price = json['price'] == null
        ? null
        : TsbobCollectionOfferFieldsMixin$Price.fromJson(
            json['price'] as Map<String, dynamic>)
    ..departure = json['departure'] == null
        ? null
        : TsbobCollectionOfferFieldsMixin$Departure.fromJson(
            json['departure'] as Map<String, dynamic>)
    ..kw$return = json['return'] == null
        ? null
        : TsbobCollectionOfferFieldsMixin$Kw$return.fromJson(
            json['return'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$TopOfferToJson(
            ProductsQuery$Query$Products$PackageProducts$TopOffer instance) =>
        <String, dynamic>{
          'sourceCode': instance.sourceCode,
          'hash': instance.hash,
          'isInFavorites': instance.isInFavorites,
          'hotelOfferCategory': instance.hotelOfferCategory,
          'lengthOfStay': instance.lengthOfStay,
          'offerStartDate': instance.offerStartDate?.toIso8601String(),
          'hotelContentId': instance.hotelContentId,
          'tourOperator': instance.tourOperator?.toJson(),
          'offerStart': instance.offerStart.toJson(),
          'offerEnd': instance.offerEnd.toJson(),
          'rooms': instance.rooms?.toJson(),
          'price': instance.price?.toJson(),
          'departure': instance.departure?.toJson(),
          'return': instance.kw$return?.toJson(),
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$Price
    _$ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$PriceFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$Price()
    ..amount = (json['amount'] as num).toDouble()
    ..perPersonAmount = (json['perPersonAmount'] as num?)?.toDouble()
    ..taxAmount = (json['taxAmount'] as num).toDouble()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$PriceToJson(
            ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$Price
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'perPersonAmount': instance.perPersonAmount,
          'taxAmount': instance.taxAmount,
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$AlternativeOffer
    _$ProductsQuery$Query$Products$PackageProducts$AlternativeOfferFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$AlternativeOffer()
    ..sourceCode = json['sourceCode'] as String?
    ..price = json['price'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$AlternativeOffer$Price
            .fromJson(json['price'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$AlternativeOfferToJson(
            ProductsQuery$Query$Products$PackageProducts$AlternativeOffer
                instance) =>
        <String, dynamic>{
          'sourceCode': instance.sourceCode,
          'price': instance.price?.toJson(),
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$References
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$ReferencesFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$References()
    ..iffCodes =
        (json['iffCodes'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$ReferencesToJson(
            ProductsQuery$Query$Products$PackageProducts$Hotel$References
                instance) =>
        <String, dynamic>{
          'iffCodes': instance.iffCodes,
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributes
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributesFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributes()
    ..label = json['label'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributesToJson(
            ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributes
                instance) =>
        <String, dynamic>{
          'label': instance.label,
          'code': instance.code,
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributesFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes()
    ..hotelAttributes = (json['hotelAttributes'] as List<dynamic>?)
        ?.map((e) =>
            ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes$HotelAttributes
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributesToJson(
            ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes
                instance) =>
        <String, dynamic>{
          'hotelAttributes':
              instance.hotelAttributes?.map((e) => e.toJson()).toList(),
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCode
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCodeFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCode()
    ..latitude = (json['latitude'] as num).toDouble()
    ..longitude = (json['longitude'] as num).toDouble();
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCodeToJson(
            ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCode
                instance) =>
        <String, dynamic>{
          'latitude': instance.latitude,
          'longitude': instance.longitude,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Region
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$RegionFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Region()
    ..name = json['name'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$RegionToJson(
            ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Region
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Country
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$CountryFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Country()
    ..name = json['name'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$CountryToJson(
            ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Country
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$Location$City
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$CityFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$Location$City()
    ..name = json['name'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$CityToJson(
            ProductsQuery$Query$Products$PackageProducts$Hotel$Location$City
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Climate
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$ClimateFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Climate()
    ..avgAirTemp = json['avgAirTemp'] as int?
    ..avgWaterTemp = json['avgWaterTemp'] as int?
    ..temperatureUnit = json['temperatureUnit'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Location$ClimateToJson(
            ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Climate
                instance) =>
        <String, dynamic>{
          'avgAirTemp': instance.avgAirTemp,
          'avgWaterTemp': instance.avgWaterTemp,
          'temperatureUnit': instance.temperatureUnit,
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$Location
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$LocationFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$Location()
    ..geoCode = json['geoCode'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$Hotel$Location$GeoCode
            .fromJson(json['geoCode'] as Map<String, dynamic>)
    ..region = json['region'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Region
            .fromJson(json['region'] as Map<String, dynamic>)
    ..country =
        ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Country
            .fromJson(json['country'] as Map<String, dynamic>)
    ..city = json['city'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$Hotel$Location$City
            .fromJson(json['city'] as Map<String, dynamic>)
    ..climate = json['climate'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$Hotel$Location$Climate
            .fromJson(json['climate'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$LocationToJson(
            ProductsQuery$Query$Products$PackageProducts$Hotel$Location
                instance) =>
        <String, dynamic>{
          'geoCode': instance.geoCode?.toJson(),
          'region': instance.region?.toJson(),
          'country': instance.country.toJson(),
          'city': instance.city?.toJson(),
          'climate': instance.climate?.toJson(),
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$Rating
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$RatingFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$Rating()
    ..name = json['name'] as String?
    ..value = (json['value'] as num).toDouble()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$RatingToJson(
            ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$Rating
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$$typename,
        };

ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings
    _$ProductsQuery$Query$Products$PackageProducts$Hotel$RatingsFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings()
    ..provider = _$enumDecodeNullable(_$RatingProviderEnumMap, json['provider'],
        unknownValue: RatingProvider.artemisUnknown)
    ..providerProductId = json['providerProductId'] as String?
    ..rating = (json['rating'] as List<dynamic>?)
        ?.map((e) =>
            ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings$Rating
                .fromJson(e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String,
    dynamic> _$ProductsQuery$Query$Products$PackageProducts$Hotel$RatingsToJson(
        ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings instance) =>
    <String, dynamic>{
      'provider': _$RatingProviderEnumMap[instance.provider],
      'providerProductId': instance.providerProductId,
      'rating': instance.rating?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

ProductsQuery$Query$Products$PackageProducts$Hotel
    _$ProductsQuery$Query$Products$PackageProducts$HotelFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts$Hotel()
    ..name = json['name'] as String?
    ..giataId = json['giataId'] as int
    ..references = json['references'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$Hotel$References
            .fromJson(json['references'] as Map<String, dynamic>)
    ..hotelAttributes = json['hotelAttributes'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$Hotel$HotelAttributes
            .fromJson(json['hotelAttributes'] as Map<String, dynamic>)
    ..category = (json['category'] as num?)?.toDouble()
    ..location = json['location'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$Hotel$Location.fromJson(
            json['location'] as Map<String, dynamic>)
    ..ratings = (json['ratings'] as List<dynamic>?)
        ?.map((e) =>
            ProductsQuery$Query$Products$PackageProducts$Hotel$Ratings.fromJson(
                e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$ProductsQuery$Query$Products$PackageProducts$HotelToJson(
        ProductsQuery$Query$Products$PackageProducts$Hotel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'giataId': instance.giataId,
      'references': instance.references?.toJson(),
      'hotelAttributes': instance.hotelAttributes?.toJson(),
      'category': instance.category,
      'location': instance.location?.toJson(),
      'ratings': instance.ratings?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

ProductsQuery$Query$Products$PackageProducts
    _$ProductsQuery$Query$Products$PackageProductsFromJson(
        Map<String, dynamic> json) {
  return ProductsQuery$Query$Products$PackageProducts()
    ..hotelContent = json['hotelContent'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$HotelContent.fromJson(
            json['hotelContent'] as Map<String, dynamic>)
    ..shipContent = json['shipContent'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$ShipContent.fromJson(
            json['shipContent'] as Map<String, dynamic>)
    ..topOffer = ProductsQuery$Query$Products$PackageProducts$TopOffer.fromJson(
        json['topOffer'] as Map<String, dynamic>)
    ..alternativeOffer = json['alternativeOffer'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$AlternativeOffer
            .fromJson(json['alternativeOffer'] as Map<String, dynamic>)
    ..hotel = json['hotel'] == null
        ? null
        : ProductsQuery$Query$Products$PackageProducts$Hotel.fromJson(
            json['hotel'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$ProductsQuery$Query$Products$PackageProductsToJson(
        ProductsQuery$Query$Products$PackageProducts instance) =>
    <String, dynamic>{
      'hotelContent': instance.hotelContent?.toJson(),
      'shipContent': instance.shipContent?.toJson(),
      'topOffer': instance.topOffer.toJson(),
      'alternativeOffer': instance.alternativeOffer?.toJson(),
      'hotel': instance.hotel?.toJson(),
      '__typename': instance.$$typename,
    };

ProductsQuery$Query$Products _$ProductsQuery$Query$ProductsFromJson(
    Map<String, dynamic> json) {
  return ProductsQuery$Query$Products()
    ..pagination = json['pagination'] == null
        ? null
        : ProductsQuery$Query$Products$Pagination.fromJson(
            json['pagination'] as Map<String, dynamic>)
    ..packageProducts = (json['packageProducts'] as List<dynamic>?)
        ?.map((e) => ProductsQuery$Query$Products$PackageProducts.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$ProductsQuery$Query$ProductsToJson(
        ProductsQuery$Query$Products instance) =>
    <String, dynamic>{
      'pagination': instance.pagination?.toJson(),
      'packageProducts':
          instance.packageProducts?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

ProductsQuery$Query _$ProductsQuery$QueryFromJson(Map<String, dynamic> json) {
  return ProductsQuery$Query()
    ..products = json['products'] == null
        ? null
        : ProductsQuery$Query$Products.fromJson(
            json['products'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductsQuery$QueryToJson(
        ProductsQuery$Query instance) =>
    <String, dynamic>{
      'products': instance.products?.toJson(),
    };

TsbobCollectionOfferFieldsMixin$TourOperator
    _$TsbobCollectionOfferFieldsMixin$TourOperatorFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$TourOperator()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$TourOperatorToJson(
        TsbobCollectionOfferFieldsMixin$TourOperator instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$OfferStart
    _$TsbobCollectionOfferFieldsMixin$OfferStartFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$OfferStart()
    ..date = DateTime.parse(json['date'] as String)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$OfferStartToJson(
        TsbobCollectionOfferFieldsMixin$OfferStart instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$OfferEnd
    _$TsbobCollectionOfferFieldsMixin$OfferEndFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$OfferEnd()
    ..date = DateTime.parse(json['date'] as String)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$OfferEndToJson(
        TsbobCollectionOfferFieldsMixin$OfferEnd instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributes
    _$TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributesFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributes()
    ..code = json['code'] as String?
    ..name = json['name'] as String?
    ..icon = json['icon'] as String?
    ..localizedName = json['localizedName'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String,
    dynamic> _$TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributesToJson(
        TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributes instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'icon': instance.icon,
      'localizedName': instance.localizedName,
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$Rooms$Room$Board
    _$TsbobCollectionOfferFieldsMixin$Rooms$Room$BoardFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$Rooms$Room$Board()
    ..boardKey = json['boardKey'] as String?
    ..label = json['label'] as String?
    ..code = json['code'] as String?
    ..opCode = json['opCode'] as String?
    ..name = json['name'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$Rooms$Room$BoardToJson(
        TsbobCollectionOfferFieldsMixin$Rooms$Room$Board instance) =>
    <String, dynamic>{
      'boardKey': instance.boardKey,
      'label': instance.label,
      'code': instance.code,
      'opCode': instance.opCode,
      'name': instance.name,
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$Rooms$Room$Codes
    _$TsbobCollectionOfferFieldsMixin$Rooms$Room$CodesFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$Rooms$Room$Codes()
    ..label = json['label'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$Rooms$Room$CodesToJson(
        TsbobCollectionOfferFieldsMixin$Rooms$Room$Codes instance) =>
    <String, dynamic>{
      'label': instance.label,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$Rooms$Room
    _$TsbobCollectionOfferFieldsMixin$Rooms$RoomFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$Rooms$Room()
    ..name = json['name'] as String?
    ..localizedName = json['localizedName'] as String?
    ..opCode = json['opCode'] as String?
    ..nbcAttributes = (json['nbcAttributes'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : TsbobCollectionOfferFieldsMixin$Rooms$Room$NbcAttributes.fromJson(
                e as Map<String, dynamic>))
        .toList()
    ..board = json['board'] == null
        ? null
        : TsbobCollectionOfferFieldsMixin$Rooms$Room$Board.fromJson(
            json['board'] as Map<String, dynamic>)
    ..codes = (json['codes'] as List<dynamic>?)
        ?.map((e) => TsbobCollectionOfferFieldsMixin$Rooms$Room$Codes.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$Rooms$RoomToJson(
        TsbobCollectionOfferFieldsMixin$Rooms$Room instance) =>
    <String, dynamic>{
      'name': instance.name,
      'localizedName': instance.localizedName,
      'opCode': instance.opCode,
      'nbcAttributes': instance.nbcAttributes?.map((e) => e?.toJson()).toList(),
      'board': instance.board?.toJson(),
      'codes': instance.codes?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$Rooms
    _$TsbobCollectionOfferFieldsMixin$RoomsFromJson(Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$Rooms()
    ..room = (json['room'] as List<dynamic>?)
        ?.map((e) => TsbobCollectionOfferFieldsMixin$Rooms$Room.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$RoomsToJson(
        TsbobCollectionOfferFieldsMixin$Rooms instance) =>
    <String, dynamic>{
      'room': instance.room?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$Price$DiscountInfo
    _$TsbobCollectionOfferFieldsMixin$Price$DiscountInfoFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$Price$DiscountInfo()
    ..fullAmount = (json['fullAmount'] as num?)?.toDouble()
    ..fullDiscountPercentage = json['fullDiscountPercentage'] as int?
    ..discountAmount = (json['discountAmount'] as num?)?.toDouble()
    ..discountReason = json['discountReason'] as String?
    ..discountAmountPerNight = json['discountAmountPerNight'] as bool?
    ..perNightFullAmount = (json['perNightFullAmount'] as num?)?.toDouble()
    ..perNightDiscountPercentage = json['perNightDiscountPercentage'] as int?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$Price$DiscountInfoToJson(
        TsbobCollectionOfferFieldsMixin$Price$DiscountInfo instance) =>
    <String, dynamic>{
      'fullAmount': instance.fullAmount,
      'fullDiscountPercentage': instance.fullDiscountPercentage,
      'discountAmount': instance.discountAmount,
      'discountReason': instance.discountReason,
      'discountAmountPerNight': instance.discountAmountPerNight,
      'perNightFullAmount': instance.perNightFullAmount,
      'perNightDiscountPercentage': instance.perNightDiscountPercentage,
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$Price
    _$TsbobCollectionOfferFieldsMixin$PriceFromJson(Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$Price()
    ..amount = (json['amount'] as num).toDouble()
    ..perPersonAmount = (json['perPersonAmount'] as num?)?.toDouble()
    ..perNightAmount = (json['perNightAmount'] as num).toDouble()
    ..taxAmount = (json['taxAmount'] as num).toDouble()
    ..discountInfo = json['discountInfo'] == null
        ? null
        : TsbobCollectionOfferFieldsMixin$Price$DiscountInfo.fromJson(
            json['discountInfo'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$PriceToJson(
        TsbobCollectionOfferFieldsMixin$Price instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'perPersonAmount': instance.perPersonAmount,
      'perNightAmount': instance.perNightAmount,
      'taxAmount': instance.taxAmount,
      'discountInfo': instance.discountInfo?.toJson(),
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$Departure
    _$TsbobCollectionOfferFieldsMixin$DepartureFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$Departure()
    ..departureAirport = json['departureAirport'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$DepartureAirport.fromJson(
            json['departureAirport'] as Map<String, dynamic>)
    ..arrivalAirport = json['arrivalAirport'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$ArrivalAirport.fromJson(
            json['arrivalAirport'] as Map<String, dynamic>)
    ..airline = json['airline'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$Airline.fromJson(
            json['airline'] as Map<String, dynamic>)
    ..arrivalDateTime = json['arrivalDateTime'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$ArrivalDateTime.fromJson(
            json['arrivalDateTime'] as Map<String, dynamic>)
    ..departureDateTime = json['departureDateTime'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$DepartureDateTime.fromJson(
            json['departureDateTime'] as Map<String, dynamic>)
    ..duration = json['duration'] as int?
    ..stopOver = json['stopOver'] as int?
    ..flightSegments = (json['flightSegments'] as List<dynamic>?)
        ?.map((e) => TsbobCollectionOfferFlightsMixin$FlightSegments.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$DepartureToJson(
        TsbobCollectionOfferFieldsMixin$Departure instance) =>
    <String, dynamic>{
      'departureAirport': instance.departureAirport?.toJson(),
      'arrivalAirport': instance.arrivalAirport?.toJson(),
      'airline': instance.airline?.toJson(),
      'arrivalDateTime': instance.arrivalDateTime?.toJson(),
      'departureDateTime': instance.departureDateTime?.toJson(),
      'duration': instance.duration,
      'stopOver': instance.stopOver,
      'flightSegments':
          instance.flightSegments?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFieldsMixin$Kw$return
    _$TsbobCollectionOfferFieldsMixin$Kw$returnFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFieldsMixin$Kw$return()
    ..departureAirport = json['departureAirport'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$DepartureAirport.fromJson(
            json['departureAirport'] as Map<String, dynamic>)
    ..arrivalAirport = json['arrivalAirport'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$ArrivalAirport.fromJson(
            json['arrivalAirport'] as Map<String, dynamic>)
    ..airline = json['airline'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$Airline.fromJson(
            json['airline'] as Map<String, dynamic>)
    ..arrivalDateTime = json['arrivalDateTime'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$ArrivalDateTime.fromJson(
            json['arrivalDateTime'] as Map<String, dynamic>)
    ..departureDateTime = json['departureDateTime'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$DepartureDateTime.fromJson(
            json['departureDateTime'] as Map<String, dynamic>)
    ..duration = json['duration'] as int?
    ..stopOver = json['stopOver'] as int?
    ..flightSegments = (json['flightSegments'] as List<dynamic>?)
        ?.map((e) => TsbobCollectionOfferFlightsMixin$FlightSegments.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFieldsMixin$Kw$returnToJson(
        TsbobCollectionOfferFieldsMixin$Kw$return instance) =>
    <String, dynamic>{
      'departureAirport': instance.departureAirport?.toJson(),
      'arrivalAirport': instance.arrivalAirport?.toJson(),
      'airline': instance.airline?.toJson(),
      'arrivalDateTime': instance.arrivalDateTime?.toJson(),
      'departureDateTime': instance.departureDateTime?.toJson(),
      'duration': instance.duration,
      'stopOver': instance.stopOver,
      'flightSegments':
          instance.flightSegments?.map((e) => e.toJson()).toList(),
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFlightsMixin$DepartureAirport
    _$TsbobCollectionOfferFlightsMixin$DepartureAirportFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$DepartureAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFlightsMixin$DepartureAirportToJson(
        TsbobCollectionOfferFlightsMixin$DepartureAirport instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFlightsMixin$ArrivalAirport
    _$TsbobCollectionOfferFlightsMixin$ArrivalAirportFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$ArrivalAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFlightsMixin$ArrivalAirportToJson(
        TsbobCollectionOfferFlightsMixin$ArrivalAirport instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFlightsMixin$Airline
    _$TsbobCollectionOfferFlightsMixin$AirlineFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$Airline()
    ..code = json['code'] as String?
    ..name = json['name'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFlightsMixin$AirlineToJson(
        TsbobCollectionOfferFlightsMixin$Airline instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFlightsMixin$ArrivalDateTime
    _$TsbobCollectionOfferFlightsMixin$ArrivalDateTimeFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$ArrivalDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFlightsMixin$ArrivalDateTimeToJson(
        TsbobCollectionOfferFlightsMixin$ArrivalDateTime instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFlightsMixin$DepartureDateTime
    _$TsbobCollectionOfferFlightsMixin$DepartureDateTimeFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$DepartureDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFlightsMixin$DepartureDateTimeToJson(
        TsbobCollectionOfferFlightsMixin$DepartureDateTime instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      '__typename': instance.$$typename,
    };

TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTime
    _$TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTimeFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTimeToJson(
            TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTime
                instance) =>
        <String, dynamic>{
          'date': instance.date.toIso8601String(),
          'time': instance.time,
          '__typename': instance.$$typename,
        };

TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTime
    _$TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTimeFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTime()
    ..date = DateTime.parse(json['date'] as String)
    ..time = json['time'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTimeToJson(
            TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTime
                instance) =>
        <String, dynamic>{
          'date': instance.date.toIso8601String(),
          'time': instance.time,
          '__typename': instance.$$typename,
        };

TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirport
    _$TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirportFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirportToJson(
            TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirport
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'code': instance.code,
          '__typename': instance.$$typename,
        };

TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirport
    _$TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirportFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirport()
    ..name = json['name'] as String?
    ..code = json['code'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirportToJson(
            TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirport
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'code': instance.code,
          '__typename': instance.$$typename,
        };

TsbobCollectionOfferFlightsMixin$FlightSegments$Airline
    _$TsbobCollectionOfferFlightsMixin$FlightSegments$AirlineFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$FlightSegments$Airline()
    ..code = json['code'] as String?
    ..name = json['name'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic>
    _$TsbobCollectionOfferFlightsMixin$FlightSegments$AirlineToJson(
            TsbobCollectionOfferFlightsMixin$FlightSegments$Airline instance) =>
        <String, dynamic>{
          'code': instance.code,
          'name': instance.name,
          '__typename': instance.$$typename,
        };

TsbobCollectionOfferFlightsMixin$FlightSegments
    _$TsbobCollectionOfferFlightsMixin$FlightSegmentsFromJson(
        Map<String, dynamic> json) {
  return TsbobCollectionOfferFlightsMixin$FlightSegments()
    ..flightNumber = json['flightNumber'] as String?
    ..arrivalDateTime = json['arrivalDateTime'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalDateTime
            .fromJson(json['arrivalDateTime'] as Map<String, dynamic>)
    ..departureDateTime = json['departureDateTime'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureDateTime
            .fromJson(json['departureDateTime'] as Map<String, dynamic>)
    ..departureAirport = json['departureAirport'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$FlightSegments$DepartureAirport
            .fromJson(json['departureAirport'] as Map<String, dynamic>)
    ..arrivalAirport = json['arrivalAirport'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$FlightSegments$ArrivalAirport
            .fromJson(json['arrivalAirport'] as Map<String, dynamic>)
    ..airline = json['airline'] == null
        ? null
        : TsbobCollectionOfferFlightsMixin$FlightSegments$Airline.fromJson(
            json['airline'] as Map<String, dynamic>)
    ..duration = json['duration'] as int?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$TsbobCollectionOfferFlightsMixin$FlightSegmentsToJson(
        TsbobCollectionOfferFlightsMixin$FlightSegments instance) =>
    <String, dynamic>{
      'flightNumber': instance.flightNumber,
      'arrivalDateTime': instance.arrivalDateTime?.toJson(),
      'departureDateTime': instance.departureDateTime?.toJson(),
      'departureAirport': instance.departureAirport?.toJson(),
      'arrivalAirport': instance.arrivalAirport?.toJson(),
      'airline': instance.airline?.toJson(),
      'duration': instance.duration,
      '__typename': instance.$$typename,
    };

BaseImagesMixin$MainImage$Preview _$BaseImagesMixin$MainImage$PreviewFromJson(
    Map<String, dynamic> json) {
  return BaseImagesMixin$MainImage$Preview()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseImagesMixin$MainImage$PreviewToJson(
        BaseImagesMixin$MainImage$Preview instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseImagesMixin$MainImage$Kw$default
    _$BaseImagesMixin$MainImage$Kw$defaultFromJson(Map<String, dynamic> json) {
  return BaseImagesMixin$MainImage$Kw$default()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseImagesMixin$MainImage$Kw$defaultToJson(
        BaseImagesMixin$MainImage$Kw$default instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseImagesMixin$MainImage$Default2x
    _$BaseImagesMixin$MainImage$Default2xFromJson(Map<String, dynamic> json) {
  return BaseImagesMixin$MainImage$Default2x()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseImagesMixin$MainImage$Default2xToJson(
        BaseImagesMixin$MainImage$Default2x instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseImagesMixin$MainImage _$BaseImagesMixin$MainImageFromJson(
    Map<String, dynamic> json) {
  return BaseImagesMixin$MainImage()
    ..preview = json['preview'] == null
        ? null
        : BaseImagesMixin$MainImage$Preview.fromJson(
            json['preview'] as Map<String, dynamic>)
    ..kw$default = json['default'] == null
        ? null
        : BaseImagesMixin$MainImage$Kw$default.fromJson(
            json['default'] as Map<String, dynamic>)
    ..default2x = json['default2x'] == null
        ? null
        : BaseImagesMixin$MainImage$Default2x.fromJson(
            json['default2x'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseImagesMixin$MainImageToJson(
        BaseImagesMixin$MainImage instance) =>
    <String, dynamic>{
      'preview': instance.preview?.toJson(),
      'default': instance.kw$default?.toJson(),
      'default2x': instance.default2x?.toJson(),
      '__typename': instance.$$typename,
    };

BaseImagesMixin$Images$Original$Size
    _$BaseImagesMixin$Images$Original$SizeFromJson(Map<String, dynamic> json) {
  return BaseImagesMixin$Images$Original$Size()
    ..width = json['width'] as int?
    ..height = json['height'] as int?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseImagesMixin$Images$Original$SizeToJson(
        BaseImagesMixin$Images$Original$Size instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      '__typename': instance.$$typename,
    };

BaseImagesMixin$Images$Original _$BaseImagesMixin$Images$OriginalFromJson(
    Map<String, dynamic> json) {
  return BaseImagesMixin$Images$Original()
    ..size = json['size'] == null
        ? null
        : BaseImagesMixin$Images$Original$Size.fromJson(
            json['size'] as Map<String, dynamic>)
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseImagesMixin$Images$OriginalToJson(
        BaseImagesMixin$Images$Original instance) =>
    <String, dynamic>{
      'size': instance.size?.toJson(),
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseImagesMixin$Images$Preview _$BaseImagesMixin$Images$PreviewFromJson(
    Map<String, dynamic> json) {
  return BaseImagesMixin$Images$Preview()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseImagesMixin$Images$PreviewToJson(
        BaseImagesMixin$Images$Preview instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseImagesMixin$Images$Kw$default _$BaseImagesMixin$Images$Kw$defaultFromJson(
    Map<String, dynamic> json) {
  return BaseImagesMixin$Images$Kw$default()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseImagesMixin$Images$Kw$defaultToJson(
        BaseImagesMixin$Images$Kw$default instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseImagesMixin$Images$Default2x _$BaseImagesMixin$Images$Default2xFromJson(
    Map<String, dynamic> json) {
  return BaseImagesMixin$Images$Default2x()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseImagesMixin$Images$Default2xToJson(
        BaseImagesMixin$Images$Default2x instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseImagesMixin$Images _$BaseImagesMixin$ImagesFromJson(
    Map<String, dynamic> json) {
  return BaseImagesMixin$Images()
    ..original = json['original'] == null
        ? null
        : BaseImagesMixin$Images$Original.fromJson(
            json['original'] as Map<String, dynamic>)
    ..preview = json['preview'] == null
        ? null
        : BaseImagesMixin$Images$Preview.fromJson(
            json['preview'] as Map<String, dynamic>)
    ..kw$default = json['default'] == null
        ? null
        : BaseImagesMixin$Images$Kw$default.fromJson(
            json['default'] as Map<String, dynamic>)
    ..default2x = json['default2x'] == null
        ? null
        : BaseImagesMixin$Images$Default2x.fromJson(
            json['default2x'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseImagesMixin$ImagesToJson(
        BaseImagesMixin$Images instance) =>
    <String, dynamic>{
      'original': instance.original?.toJson(),
      'preview': instance.preview?.toJson(),
      'default': instance.kw$default?.toJson(),
      'default2x': instance.default2x?.toJson(),
      '__typename': instance.$$typename,
    };

BaseShipImagesMixin$MainImage$Preview
    _$BaseShipImagesMixin$MainImage$PreviewFromJson(Map<String, dynamic> json) {
  return BaseShipImagesMixin$MainImage$Preview()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseShipImagesMixin$MainImage$PreviewToJson(
        BaseShipImagesMixin$MainImage$Preview instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseShipImagesMixin$MainImage$Kw$default
    _$BaseShipImagesMixin$MainImage$Kw$defaultFromJson(
        Map<String, dynamic> json) {
  return BaseShipImagesMixin$MainImage$Kw$default()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseShipImagesMixin$MainImage$Kw$defaultToJson(
        BaseShipImagesMixin$MainImage$Kw$default instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseShipImagesMixin$MainImage$Default2x
    _$BaseShipImagesMixin$MainImage$Default2xFromJson(
        Map<String, dynamic> json) {
  return BaseShipImagesMixin$MainImage$Default2x()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseShipImagesMixin$MainImage$Default2xToJson(
        BaseShipImagesMixin$MainImage$Default2x instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseShipImagesMixin$MainImage _$BaseShipImagesMixin$MainImageFromJson(
    Map<String, dynamic> json) {
  return BaseShipImagesMixin$MainImage()
    ..preview = json['preview'] == null
        ? null
        : BaseShipImagesMixin$MainImage$Preview.fromJson(
            json['preview'] as Map<String, dynamic>)
    ..kw$default = json['default'] == null
        ? null
        : BaseShipImagesMixin$MainImage$Kw$default.fromJson(
            json['default'] as Map<String, dynamic>)
    ..default2x = json['default2x'] == null
        ? null
        : BaseShipImagesMixin$MainImage$Default2x.fromJson(
            json['default2x'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseShipImagesMixin$MainImageToJson(
        BaseShipImagesMixin$MainImage instance) =>
    <String, dynamic>{
      'preview': instance.preview?.toJson(),
      'default': instance.kw$default?.toJson(),
      'default2x': instance.default2x?.toJson(),
      '__typename': instance.$$typename,
    };

BaseShipImagesMixin$Images$Preview _$BaseShipImagesMixin$Images$PreviewFromJson(
    Map<String, dynamic> json) {
  return BaseShipImagesMixin$Images$Preview()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseShipImagesMixin$Images$PreviewToJson(
        BaseShipImagesMixin$Images$Preview instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseShipImagesMixin$Images$Kw$default
    _$BaseShipImagesMixin$Images$Kw$defaultFromJson(Map<String, dynamic> json) {
  return BaseShipImagesMixin$Images$Kw$default()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseShipImagesMixin$Images$Kw$defaultToJson(
        BaseShipImagesMixin$Images$Kw$default instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseShipImagesMixin$Images$Default2x
    _$BaseShipImagesMixin$Images$Default2xFromJson(Map<String, dynamic> json) {
  return BaseShipImagesMixin$Images$Default2x()
    ..url = json['url'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseShipImagesMixin$Images$Default2xToJson(
        BaseShipImagesMixin$Images$Default2x instance) =>
    <String, dynamic>{
      'url': instance.url,
      '__typename': instance.$$typename,
    };

BaseShipImagesMixin$Images _$BaseShipImagesMixin$ImagesFromJson(
    Map<String, dynamic> json) {
  return BaseShipImagesMixin$Images()
    ..preview = json['preview'] == null
        ? null
        : BaseShipImagesMixin$Images$Preview.fromJson(
            json['preview'] as Map<String, dynamic>)
    ..kw$default = json['default'] == null
        ? null
        : BaseShipImagesMixin$Images$Kw$default.fromJson(
            json['default'] as Map<String, dynamic>)
    ..default2x = json['default2x'] == null
        ? null
        : BaseShipImagesMixin$Images$Default2x.fromJson(
            json['default2x'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$BaseShipImagesMixin$ImagesToJson(
        BaseShipImagesMixin$Images instance) =>
    <String, dynamic>{
      'preview': instance.preview?.toJson(),
      'default': instance.kw$default?.toJson(),
      'default2x': instance.default2x?.toJson(),
      '__typename': instance.$$typename,
    };

GetHotelsAutocompleteArguments _$GetHotelsAutocompleteArgumentsFromJson(
    Map<String, dynamic> json) {
  return GetHotelsAutocompleteArguments(
    keyword: json['keyword'] as String,
    bookingType: _$enumDecode(_$BookingTypeEnumEnumMap, json['bookingType'],
        unknownValue: BookingTypeEnum.artemisUnknown),
  );
}

Map<String, dynamic> _$GetHotelsAutocompleteArgumentsToJson(
        GetHotelsAutocompleteArguments instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'bookingType': _$BookingTypeEnumEnumMap[instance.bookingType],
    };

DestinationsArguments _$DestinationsArgumentsFromJson(
    Map<String, dynamic> json) {
  return DestinationsArguments(
    bookingType: _$enumDecode(_$BookingTypeEnumEnumMap, json['bookingType'],
        unknownValue: BookingTypeEnum.artemisUnknown),
  );
}

Map<String, dynamic> _$DestinationsArgumentsToJson(
        DestinationsArguments instance) =>
    <String, dynamic>{
      'bookingType': _$BookingTypeEnumEnumMap[instance.bookingType],
    };

GetHotelReviewsArguments _$GetHotelReviewsArgumentsFromJson(
    Map<String, dynamic> json) {
  return GetHotelReviewsArguments(
    filter: ReviewsFilter.fromJson(json['filter'] as Map<String, dynamic>),
    paging: PagingInput.fromJson(json['paging'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GetHotelReviewsArgumentsToJson(
        GetHotelReviewsArguments instance) =>
    <String, dynamic>{
      'filter': instance.filter.toJson(),
      'paging': instance.paging.toJson(),
    };

GetOfferListArguments _$GetOfferListArgumentsFromJson(
    Map<String, dynamic> json) {
  return GetOfferListArguments(
    packageOfferRequest: PackageOfferRequestInput.fromJson(
        json['packageOfferRequest'] as Map<String, dynamic>),
    includeRoomDescription: json['includeRoomDescription'] as bool?,
  );
}

Map<String, dynamic> _$GetOfferListArgumentsToJson(
        GetOfferListArguments instance) =>
    <String, dynamic>{
      'packageOfferRequest': instance.packageOfferRequest.toJson(),
      'includeRoomDescription': instance.includeRoomDescription,
    };

GetRoomOverviewArguments _$GetRoomOverviewArgumentsFromJson(
    Map<String, dynamic> json) {
  return GetRoomOverviewArguments(
    hotelContentId: json['hotelContentId'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$GetRoomOverviewArgumentsToJson(
        GetRoomOverviewArguments instance) =>
    <String, dynamic>{
      'hotelContentId': instance.hotelContentId,
    };

AddToFavoritesArguments _$AddToFavoritesArgumentsFromJson(
    Map<String, dynamic> json) {
  return AddToFavoritesArguments(
    giataId: json['giataId'] as int,
    offer: OfferInput.fromJson(json['offer'] as Map<String, dynamic>),
    productSearch: json['productSearch'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$AddToFavoritesArgumentsToJson(
        AddToFavoritesArguments instance) =>
    <String, dynamic>{
      'giataId': instance.giataId,
      'offer': instance.offer.toJson(),
      'productSearch': instance.productSearch,
    };

ProductsQueryArguments _$ProductsQueryArgumentsFromJson(
    Map<String, dynamic> json) {
  return ProductsQueryArguments(
    productSearch: ProductSearchInput.fromJson(
        json['productSearch'] as Map<String, dynamic>),
    currency: json['currency'] as String?,
    showingResultsFrom: json['showingResultsFrom'] as int,
    resultsPerPage: json['resultsPerPage'] as int,
    sortingOrder: _$enumDecode(
        _$FilterSortingOrderEnumEnumMap, json['sortingOrder'],
        unknownValue: FilterSortingOrderEnum.artemisUnknown),
    withShipContent: json['withShipContent'] as bool?,
  );
}

Map<String, dynamic> _$ProductsQueryArgumentsToJson(
        ProductsQueryArguments instance) =>
    <String, dynamic>{
      'productSearch': instance.productSearch.toJson(),
      'currency': instance.currency,
      'showingResultsFrom': instance.showingResultsFrom,
      'resultsPerPage': instance.resultsPerPage,
      'sortingOrder': _$FilterSortingOrderEnumEnumMap[instance.sortingOrder],
      'withShipContent': instance.withShipContent,
    };
