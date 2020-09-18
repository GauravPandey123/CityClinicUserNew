class VerifyOtpResponse {
  bool success;
  String message;
  User user;

  VerifyOtpResponse({this.success, this.message, this.user});

  VerifyOtpResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  int userId;
  String name;
  String email;
  String phoneNumber;
  String password;
  String accessToken;
  String appVersion;
  String latitude;
  String longitude;
  String osType;
  int created;
  int updated;

  User(
      {this.userId,
        this.name,
        this.email,
        this.phoneNumber,
        this.password,
        this.accessToken,
        this.appVersion,
        this.latitude,
        this.longitude,
        this.osType,
        this.created,
        this.updated});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    password = json['password'];
    accessToken = json['accessToken'];
    appVersion = json['appVersion'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    osType = json['osType'];
    created = json['created'];
    updated = json['updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['password'] = this.password;
    data['accessToken'] = this.accessToken;
    data['appVersion'] = this.appVersion;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['osType'] = this.osType;
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}
