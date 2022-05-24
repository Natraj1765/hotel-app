import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:jaz_app/bloc/product_query_bloc.dart';
import 'package:jaz_app/models/graphql/graphql_api.graphql.dart';
import 'package:jaz_app/utils/strings.dart';

import '../graphql_provider.dart';
import '../utils/GlobalStates.dart';
import '../utils/strings.dart';

class SearchService {
  ProductsQueryArguments getProductQueryArguments(
      DateTime startDate,
      DateTime endDate,
      String destinationValue,
      String themeValue,
      List<TravellersRoomInput> roomRef,
      List<TravellerFilterInput> roomRefType,
      String promoCode) {
    ProductSearchInput productSearchInput = ProductSearchInput();
    int resultsPerPage = 10;
    int startForm = 0;
    FilterSortingOrderEnum sortingOrder = FilterSortingOrderEnum.priceAsc;
    TravelPeriodFilterInput travelPeriodFilterInput =
        TravelPeriodFilterInput(maxDuration: 1, minDuration: 1);
    DateTimeRangeFilterInput departureDateTime = DateTimeRangeFilterInput();
    DateTimeRangeFilterInput returnDateTime = DateTimeRangeFilterInput();
    DateRangeFilterInput minDateRangeFilter = DateRangeFilterInput();
    DateRangeFilterInput maxDateRangeFilter = DateRangeFilterInput();
    PriceRangeFilterInput priceRangeFilterInput = PriceRangeFilterInput(
      minPrice: 0,
      maxPrice: 999999,
    );
    FlightDetailsFilterInput flightDetailsFilterInput =
        FlightDetailsFilterInput();
    RequestBaseHotelFilterInput hotelFilter = RequestBaseHotelFilterInput();
    HotelAttributesFilterInput hotelAttributesFilterInput =
        HotelAttributesFilterInput();
    travelPeriodFilterInput.departureDateTime = departureDateTime;
    travelPeriodFilterInput.returnDateTime = returnDateTime;
    departureDateTime.dateRangeFilter = minDateRangeFilter;
    returnDateTime.dateRangeFilter = maxDateRangeFilter;
    minDateRangeFilter.minDate = startDate;
      maxDateRangeFilter.maxDate = endDate;
    productSearchInput.bookingType = BookingTypeEnum.hotelOnly;
    //  productSearchInput.travellersFilter = [travellerFilterInput];
    productSearchInput.travelPeriod = travelPeriodFilterInput;
    //productSearchInput.travellersRooms = [travellersRoomInput];
    productSearchInput.priceRangeFilter = priceRangeFilterInput;
    productSearchInput.flightDetailsFilter = flightDetailsFilterInput;
    hotelFilter.hotelAttributesFilter = hotelAttributesFilterInput;

    if (destinationValue != "") {
      productSearchInput.nodeCodes = [destinationValue];
    }
    if (themeValue != "") {
      hotelAttributesFilterInput.hotelAttributes = [themeValue];
      productSearchInput.hotelFilter = hotelFilter;
    }
    productSearchInput.travellersFilter = roomRefType;
    productSearchInput.travellersRooms = roomRef;
    productSearchInput.vouchers = [promoCode];
    ProductsQueryArguments args = ProductsQueryArguments(
        productSearch: productSearchInput,
        resultsPerPage: resultsPerPage,
        showingResultsFrom: startForm,
        sortingOrder: sortingOrder,
        withShipContent: true,
        currency:GlobalState.selectedCurrency != null
                     ? GlobalState.selectedCurrency
                    : Strings.usd);
    return args;
  }

  GetOfferListArguments getOfferListArguments(
      int giataId,String currency,String promoCode,List<TravellerFilterInput> travelFilters,List<TravellersRoomInput> roomDetails){
    ProductSearchInput productSearchInput = ProductSearchInput();
    TravelPeriodFilterInput travelPeriodFilterInput =
    TravelPeriodFilterInput(maxDuration: 1, minDuration: 1);
    DateTimeRangeFilterInput departureDateTime = DateTimeRangeFilterInput();
    DateTimeRangeFilterInput returnDateTime = DateTimeRangeFilterInput();
    DateRangeFilterInput minDateRangeFilter = DateRangeFilterInput();
    DateRangeFilterInput maxDateRangeFilter = DateRangeFilterInput();
    PriceRangeFilterInput priceRangeFilterInput = PriceRangeFilterInput(
      minPrice: 0,
      maxPrice: 999999,
    );
    FlightDetailsFilterInput flightDetailsFilterInput =
    FlightDetailsFilterInput();
    RequestBaseHotelFilterInput hotelFilter = RequestBaseHotelFilterInput();
    HotelAttributesFilterInput hotelAttributesFilterInput =
    HotelAttributesFilterInput();
    HotelReferenceInput hotelReferenceInput = HotelReferenceInput();
    travelPeriodFilterInput.departureDateTime = departureDateTime;
    travelPeriodFilterInput.returnDateTime = returnDateTime;
    departureDateTime.dateRangeFilter = minDateRangeFilter;
    returnDateTime.dateRangeFilter = maxDateRangeFilter;
    minDateRangeFilter.minDate = GlobalState.checkInDate;
    maxDateRangeFilter.maxDate = GlobalState.checkOutDate;
    productSearchInput.bookingType = BookingTypeEnum.hotelOnly;
    productSearchInput.travelPeriod = travelPeriodFilterInput;
    productSearchInput.priceRangeFilter = priceRangeFilterInput;
    productSearchInput.flightDetailsFilter = flightDetailsFilterInput;
    hotelFilter.hotelAttributesFilter = hotelAttributesFilterInput;
    if (GlobalState.destinationValue != "" &&
        GlobalState.destinationValue != null) {
      productSearchInput.nodeCodes = [GlobalState.destinationValue];
    }
    if (GlobalState.themeValue != "" && GlobalState.themeValue != null) {
      hotelAttributesFilterInput.hotelAttributes = [GlobalState.themeValue];
    }
    productSearchInput.travellersFilter = travelFilters;
    productSearchInput.travellersRooms = roomDetails;
    if(promoCode!="") {
      productSearchInput.vouchers = [promoCode];
    }
    hotelReferenceInput.hotelCodes = [giataId];
    hotelReferenceInput.codeType = HotelReferenceCodeTypeEnum.giata;
    hotelFilter.references = [hotelReferenceInput];
    productSearchInput.hotelFilter = hotelFilter;

    PagingGroupFilterInput pagingGroupFilterInput = PagingGroupFilterInput();
    pagingGroupFilterInput.resultsTotal = 1000;
    pagingGroupFilterInput.resultsPerPage = 150;
    pagingGroupFilterInput.showingResultsFrom = 0;

    MetaAttributeFilterInput metaAttributeFilterInput =
    MetaAttributeFilterInput(currency: currency);

    PackageOfferRequestInput packageOfferRequest =  PackageOfferRequestInput(
        productSearch: productSearchInput,
        metaAttributeFilter: metaAttributeFilterInput,
        pagination: pagingGroupFilterInput,
        sortingOrder: FilterSortingOrderEnum.priceAsc);

    return GetOfferListArguments(
        packageOfferRequest: packageOfferRequest, includeRoomDescription: true);
  }




}
