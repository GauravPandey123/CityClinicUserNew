/// success : true
/// message : "Otp has been sent successfully"
/// otp : "3895"
/// user : {"user_id":7,"result_forgot_log_id":1,"type":"phone","otp":"3895","phone_number":"9953502690"}

class ForgotPasswordResponse {
  bool _success;
  String _message;
  String _otp;
  User _user;

  bool get success => _success;
  String get message => _message;
  String get otp => _otp;
  User get user => _user;

  ForgotPasswordResponse({
      bool success, 
      String message, 
      String otp, 
      User user}){
    _success = success;
    _message = message;
    _otp = otp;
    _user = user;
}

  ForgotPasswordResponse.fromJson(dynamic json) {
    _success = json["success"];
    _message = json["message"];
    _otp = json["otp"];
    _user = json["user"] != null ? User.fromJson(json["user"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    map["message"] = _message;
    map["otp"] = _otp;
    if (_user != null) {
      map["user"] = _user.toJson();
    }
    return map;
  }

}

/// user_id : 7
/// result_forgot_log_id : 1
/// type : "phone"
/// otp : "3895"
/// phone_number : "9953502690"

class User {
  int _userId;
  int _resultForgotLogId;
  String _type;
  String _otp;
  String _phoneNumber;

  int get userId => _userId;
  int get resultForgotLogId => _resultForgotLogId;
  String get type => _type;
  String get otp => _otp;
  String get phoneNumber => _phoneNumber;

  User({
      int userId, 
      int resultForgotLogId, 
      String type, 
      String otp, 
      String phoneNumber}){
    _userId = userId;
    _resultForgotLogId = resultForgotLogId;
    _type = type;
    _otp = otp;
    _phoneNumber = phoneNumber;
}

  User.fromJson(dynamic json) {
    _userId = json["userId"];
    _resultForgotLogId = json["resultForgotLogId"];
    _type = json["type"];
    _otp = json["otp"];
    _phoneNumber = json["phoneNumber"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["userId"] = _userId;
    map["resultForgotLogId"] = _resultForgotLogId;
    map["type"] = _type;
    map["otp"] = _otp;
    map["phoneNumber"] = _phoneNumber;
    return map;
  }

}