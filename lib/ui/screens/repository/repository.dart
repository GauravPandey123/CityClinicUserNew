import 'package:city_clinic_user/model/login/response/LoginResponse.dart';
import 'package:city_clinic_user/model/signup/reposne/signup_response.dart';
import 'package:city_clinic_user/model/updateprofile/response/PersonalProfileResponse.dart';
import 'package:city_clinic_user/model/verifyotp/verify_otp_response.dart';
import 'package:city_clinic_user/ui/network/api_provider.dart';

class Repository {
  final apiProvider = ApiProvider();

  Future<SignUpResponse> signUp(
          String name,
          String email,
          String phoneNumber,
          String password,
          String firebase_token,
          String longitude,
          String latitude) =>
      apiProvider.signUp(name, email, phoneNumber, password, firebase_token,
          longitude, latitude);

  Future<LoginResponse> login(String userCred, String password,
          String longitude, String latitude) =>
      apiProvider.login(userCred, password, longitude, latitude);

  Future<VerifyOtpResponse> verifyOtp(
          String userLogId, String phoneNumber, String otp, String userId) =>
      apiProvider.verifyOtpResponse(userLogId, phoneNumber, otp, userId);

  Future<PersonalProfileResponse> personalProfileResponse(
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
          String city_id,
          String accesstoken,
          String Userid) =>
      apiProvider.updateProfileResponse(
          name,
          email,
          phone_number,
          gender,
          dob,
          pas_xyz_id,
          nationality_id,
          height,
          weight,
          address_1,
          address_2,
          locality,
          country_id,
          city_id,
          accesstoken,
          Userid);
}
