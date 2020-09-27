import 'dart:convert';
import 'dart:io';
import 'package:city_clinic_user/model/login/response/LoginResponse.dart';
import 'package:city_clinic_user/model/signup/reposne/signup_response.dart';
import 'package:city_clinic_user/model/updateprofile/response/PersonalProfileResponse.dart';
import 'package:city_clinic_user/model/verifyotp/verify_otp_response.dart';
import 'package:city_clinic_user/utils/AppUtils.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  final Dio _dioClient = Dio(BaseOptions(
      baseUrl: 'http://projects.adsandurl.com/cityclinics/api',
      headers: {
        'Appversion': '1.0',
        'Ostype': Platform.isAndroid ? 'ANDRIOD' : 'ios'
      }));

  Future<SignUpResponse> signUp(
      String name,
      String email,
      String phone_number,
      String password,
      String firebase_token,
      String longitude,
      String latitude) async {
    final map = {
      "name": name,
      "email": email,
      "phone_number": phone_number,
      "password": password,
      "firebase_token": firebase_token,
      "longitude": longitude,
      "latitude": latitude
    };

    print("signup -> $map");
    try {
      Response response = await _dioClient.post('/signup', data: map);
      print(response.data);
      if (response.data != "") {
        var data = json.decode(response.toString());
        SignUpResponse signupResponse = new SignUpResponse.fromJson(data);
        if (data['success'] == true)
          return SignUpResponse.fromJson(data);
        else
          return SignUpResponse.fromJson(response.data['message']);
      } else {
        return SignUpResponse.fromJson(response.data);
      }
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      var e = error;
      if (error is DioError) {
        e = getErrorMsg(e.type);
      }
      return e;
    }
  }

  Future<LoginResponse> login(String userCred, String password,
      String longitude, String latitude) async {
    final map = {
      "user_cred": userCred,
      "password": password,
      "longitude": longitude,
      "latitude": latitude,
    };
    try {
      Response response = await _dioClient.post('/login', data: map);
      print(response.data);
      var data = json.decode(response.toString());
      if (data['success'] == true)
        return LoginResponse.fromJson(data);
      else
        return LoginResponse.fromJson(response.data['message']);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      var e = error;
      if (error is DioError) {
        e = getErrorMsg(e.type);
      }
      return e;
    }
  }

  Future<VerifyOtpResponse> verifyOtpResponse(
      String user_otp_log_id, String phone_number, String otp,String userid) async {

    final Dio _dioClientHeader = Dio(BaseOptions(
        baseUrl: 'http://projects.adsandurl.com/cityclinics/api',
        headers: {
          'Appversion': '1.0',
          'Ostype': Platform.isAndroid ? 'ANDRIOD' : 'ios',
          'Userid' : userid
        }));

    final map = {
      "user_otp_log_id": user_otp_log_id,
      "phone_number": phone_number,
      "otp": otp
    };
    try {
      Response response = await _dioClientHeader.post('/verifyotp', data: map);
      var data = json.decode(response.toString());
      if (data['success'] == true)
        return VerifyOtpResponse.fromJson(data);
      else
        return VerifyOtpResponse.fromJson(data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      var e = error;
      if (error is DioError) {
        e = getErrorMsg(e.type);
      }
      return e;
    }
  }


  Future<PersonalProfileResponse> updateProfileResponse(
      String name,
      String email,
      String phone_number,
      String gender,
      String dob,
      String pas_xyz_id,
      String nationality_id,
      String height,
      String weight,
      String address_1,
      String address_2,
      String locality,
      String country_id,
      String city_id, accesstoken,
      Userid) async {
      final Dio _dioClientHeader = Dio(BaseOptions(
        baseUrl: 'http://projects.adsandurl.com/cityclinics/api',
        headers: {
          'Appversion': '1.0',
          'Ostype': Platform.isAndroid ? 'ANDRIOD' : 'ios',
          'Userid' : Userid,
          'Accesstoken' : accesstoken
        }));

    final map = {
      "name": name,
      "email": email,
      "phone_number": phone_number,
      "gender" : gender,
      "dob" : dob,
      "pas_xyz_id" : pas_xyz_id,
      "nationality_id" : nationality_id,
      "height" : height,
      "weight" : weight,
      "address_1" : address_1,
      "address_2" : address_2,
      "locality" :  locality,
      "country_id" : country_id,
      "city_id" : city_id
    };

      print("userID -> ${Userid} :: accessToken -> ${accesstoken} :: map -> $map");

    try {
      Response response = await _dioClientHeader.put('/profile', data: map);
      dynamic json = jsonDecode(response.toString());
      if (json['success'] == true)
        return PersonalProfileResponse.fromJson(json);
      else
        return PersonalProfileResponse.fromJson(response.data['message']);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      var e = error;
      if (error is DioError) {
        e = getErrorMsg(e.type);
      }
      return PersonalProfileResponse.fromJson(e);
    }
  }

  String getErrorMsg(DioErrorType type) {
    switch (type) {
      case DioErrorType.CONNECT_TIMEOUT:
        // TODO: Handle this case.
        return "Connection timeout";
        break;
      case DioErrorType.SEND_TIMEOUT:
        // TODO: Handle this case.
        return "Send timeout";
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        // TODO: Handle this case.
        return "Receive timeout";
        break;
      case DioErrorType.RESPONSE:
        // TODO: Handle this case.
        return "Response timeout";
        break;
      case DioErrorType.CANCEL:
        // TODO: Handle this case.
        return "Request has been cancelled";
        break;
      case DioErrorType.DEFAULT:
        // TODO: Handle this case.
        return "Could not connect";
        break;
      default:
        return "Something went wrong";
        break;
    }
  }
}
