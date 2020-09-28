/// success : true
/// message : "User password updated successfully."
/// user : {"user_id":2,"name":"santosh sharma","email":"santosh.adsnurl@gmail.coms","phone_number":"9891088434","password":"$2y$10$ijh7FqF7l7Oy.OR2COlwher.XQOMLOwRQwA4skoy8I2fcNJX4H5xe","accessToken":"9204223735f5f11e4593d06.49386394","appVersion":"1.0","latitude":"28.613459424004414","longitude":"77.24487304687501","osType":"ANDRIOD","created":false,"updated":false}

class ResetPasswordResponse {
  bool _success;
  String _message;
  User _user;

  bool get success => _success;
  String get message => _message;
  User get user => _user;

  ResetPasswordResponse({
      bool success, 
      String message, 
      User user}){
    _success = success;
    _message = message;
    _user = user;
}

  ResetPasswordResponse.fromJson(dynamic json) {
    _success = json["success"];
    _message = json["message"];
    _user = json["user"] != null ? User.fromJson(json["user"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    map["message"] = _message;
    if (_user != null) {
      map["user"] = _user.toJson();
    }
    return map;
  }

}

/// user_id : 2
/// name : "santosh sharma"
/// email : "santosh.adsnurl@gmail.coms"
/// phone_number : "9891088434"
/// password : "$2y$10$ijh7FqF7l7Oy.OR2COlwher.XQOMLOwRQwA4skoy8I2fcNJX4H5xe"
/// accessToken : "9204223735f5f11e4593d06.49386394"
/// appVersion : "1.0"
/// latitude : "28.613459424004414"
/// longitude : "77.24487304687501"
/// osType : "ANDRIOD"
/// created : false
/// updated : false

class User {
  int _userId;
  String _name;
  String _email;
  String _phoneNumber;
  String _password;
  String _accessToken;
  String _appVersion;
  String _latitude;
  String _longitude;
  String _osType;
  bool _created;
  bool _updated;

  int get userId => _userId;
  String get name => _name;
  String get email => _email;
  String get phoneNumber => _phoneNumber;
  String get password => _password;
  String get accessToken => _accessToken;
  String get appVersion => _appVersion;
  String get latitude => _latitude;
  String get longitude => _longitude;
  String get osType => _osType;
  bool get created => _created;
  bool get updated => _updated;

  User({
      int userId, 
      String name, 
      String email, 
      String phoneNumber, 
      String password, 
      String accessToken, 
      String appVersion, 
      String latitude, 
      String longitude, 
      String osType, 
      bool created, 
      bool updated}){
    _userId = userId;
    _name = name;
    _email = email;
    _phoneNumber = phoneNumber;
    _password = password;
    _accessToken = accessToken;
    _appVersion = appVersion;
    _latitude = latitude;
    _longitude = longitude;
    _osType = osType;
    _created = created;
    _updated = updated;
}

  User.fromJson(dynamic json) {
    _userId = json["userId"];
    _name = json["name"];
    _email = json["email"];
    _phoneNumber = json["phoneNumber"];
    _password = json["password"];
    _accessToken = json["accessToken"];
    _appVersion = json["appVersion"];
    _latitude = json["latitude"];
    _longitude = json["longitude"];
    _osType = json["osType"];
    _created = json["created"];
    _updated = json["updated"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["userId"] = _userId;
    map["name"] = _name;
    map["email"] = _email;
    map["phoneNumber"] = _phoneNumber;
    map["password"] = _password;
    map["accessToken"] = _accessToken;
    map["appVersion"] = _appVersion;
    map["latitude"] = _latitude;
    map["longitude"] = _longitude;
    map["osType"] = _osType;
    map["created"] = _created;
    map["updated"] = _updated;
    return map;
  }

}