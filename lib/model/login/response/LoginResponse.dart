class LoginResponse {
  bool success;
  String message;
  User user;

  LoginResponse({this.success, this.message, this.user});

  LoginResponse.fromJson(Map<String, dynamic> json) {
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
  String status;
  String phoneNumber;
  int created;
  int updated;

  User(
      {this.userId,
        this.name,
        this.email,
        this.status,
        this.phoneNumber,
        this.created,
        this.updated});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    email = json['email'];
    status = json['status'];
    phoneNumber = json['phone_number'];
    created = json['created'];
    updated = json['updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['status'] = this.status;
    data['phone_number'] = this.phoneNumber;
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}
