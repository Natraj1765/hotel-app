class Queries {
  String getHotelAttribute() {
    return '''
query globalTypes {
  options(formDataRequest: {msgTypes: GLOBAL_TYPES}) {
    globalTypesStatic {
      label
      value
      data {
        icon
        hidden
      }
      children {
        label
        value
      }
    }
  }
}
 ''';
  }
}
