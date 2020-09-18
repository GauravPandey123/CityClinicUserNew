/// success : true
/// message : "OTP resend on provided phone number"
/// otp : {"otp":"8942"}

class ResendOtpResponse {
  bool _success;
  String _message;
  Otp _otp;

  bool get success => _success;
  String get message => _message;
  Otp get otp => _otp;

  ResendOtpResponse({
      bool success, 
      String message, 
      Otp otp}){
    _success = success;
    _message = message;
    _otp = otp;
}

  ResendOtpResponse.fromJson(dynamic json) {
    _success = json["success"];
    _message = json["message"];
    _otp = json["otp"] != null ? Otp.fromJson(json["otp"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    map["message"] = _message;
    if (_otp != null) {
      map["otp"] = _otp.toJson();
    }
    return map;
  }

}

/// otp : "8942"

class Otp {
  String _otp;

  String get otp => _otp;

  Otp({
      String otp}){
    _otp = otp;
}

  Otp.fromJson(dynamic json) {
    _otp = json["otp"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["otp"] = _otp;
    return map;
  }

}