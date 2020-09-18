class PersonalProfileResponse {
  bool success;
  String message;
  User user;

  PersonalProfileResponse({this.success, this.message, this.user});

  PersonalProfileResponse.fromJson(Map<String, dynamic> json) {
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
  Null pasXyzId;
  Null nationalityId;
  String dob;
  String gender;
  String height;
  String weight;
  String address1;
  String address2;
  String locality;
  int countryId;
  int cityId;
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
        this.pasXyzId,
        this.nationalityId,
        this.dob,
        this.gender,
        this.height,
        this.weight,
        this.address1,
        this.address2,
        this.locality,
        this.countryId,
        this.cityId,
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
    pasXyzId = json['pas_xyz_id'];
    nationalityId = json['nationality_id'];
    dob = json['dob'];
    gender = json['gender'];
    height = json['height'];
    weight = json['weight'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    locality = json['locality'];
    countryId = json['country_id'];
    cityId = json['city_id'];
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
    data['pas_xyz_id'] = this.pasXyzId;
    data['nationality_id'] = this.nationalityId;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['address_1'] = this.address1;
    data['address_2'] = this.address2;
    data['locality'] = this.locality;
    data['country_id'] = this.countryId;
    data['city_id'] = this.cityId;
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
