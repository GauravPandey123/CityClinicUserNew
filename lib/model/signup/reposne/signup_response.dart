class SignUpResponse {
  bool success;
  String message;
  String otp;
  User user;

  SignUpResponse({this.success, this.message, this.otp, this.user});

  SignUpResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    otp = json['otp'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['otp'] = this.otp;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  int userId;
  int userLogId;
  String otp;
  String phoneNumber;
  String email;

  User({this.userId, this.userLogId, this.otp, this.phoneNumber, this.email});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userLogId = json['user_log_id'];
    otp = json['otp'];
    phoneNumber = json['phone_number'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_log_id'] = this.userLogId;
    data['otp'] = this.otp;
    data['phone_number'] = this.phoneNumber;
    data['email'] = this.email;
    return data;
  }
}
