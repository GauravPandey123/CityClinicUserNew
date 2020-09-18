
class GetCityResponse {
  bool _success;
  String _message;
  List<City_list> _cityList;

  bool get success => _success;
  String get message => _message;
  List<City_list> get cityList => _cityList;

  GetCityResponse({
      bool success, 
      String message, 
      List<City_list> cityList}){
    _success = success;
    _message = message;
    _cityList = cityList;
}

  GetCityResponse.fromJson(dynamic json) {
    _success = json["success"];
    _message = json["message"];
    if (json["cityList"] != null) {
      _cityList = [];
      json["cityList"].forEach((v) {
        _cityList.add(City_list.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    map["message"] = _message;
    if (_cityList != null) {
      map["cityList"] = _cityList.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 10
/// name : "Faridabad"
/// state_id : 13

class City_list {
  int _id;
  String _name;
  int _stateId;

  int get id => _id;
  String get name => _name;
  int get stateId => _stateId;

  City_list({
      int id, 
      String name, 
      int stateId}){
    _id = id;
    _name = name;
    _stateId = stateId;
}

  City_list.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _stateId = json["stateId"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["stateId"] = _stateId;
    return map;
  }

}