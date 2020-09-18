
class CountryResponse {
  bool _success;
  String _message;
  List<Country_list> _countryList;

  bool get success => _success;
  String get message => _message;
  List<Country_list> get countryList => _countryList;

  CountryResponse({
      bool success, 
      String message, 
      List<Country_list> countryList}){
    _success = success;
    _message = message;
    _countryList = countryList;
}

  CountryResponse.fromJson(dynamic json) {
    _success = json["success"];
    _message = json["message"];
    if (json["countryList"] != null) {
      _countryList = [];
      json["countryList"].forEach((v) {
        _countryList.add(Country_list.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    map["message"] = _message;
    if (_countryList != null) {
      map["countryList"] = _countryList.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// sortname : "AF"
/// name : "Afghanistan"

class Country_list {
  int _id;
  String _sortname;
  String _name;

  int get id => _id;
  String get sortname => _sortname;
  String get name => _name;

  Country_list({
      int id, 
      String sortname, 
      String name}){
    _id = id;
    _sortname = sortname;
    _name = name;
}

  Country_list.fromJson(dynamic json) {
    _id = json["id"];
    _sortname = json["sortname"];
    _name = json["name"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["sortname"] = _sortname;
    map["name"] = _name;
    return map;
  }

}