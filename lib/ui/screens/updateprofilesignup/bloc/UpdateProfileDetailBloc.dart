import 'package:city_clinic_user/model/signup/reposne/signup_response.dart';
import 'package:city_clinic_user/model/updateprofile/response/PersonalProfileResponse.dart';
import 'package:city_clinic_user/ui/screens/repository/base.dart';
import 'package:rxdart/rxdart.dart';

class UpdateProfileDetailBloc extends BaseBloc{

  final _updateProfileResponse = PublishSubject<PersonalProfileResponse>();
  final _loadingStream = PublishSubject<bool>();
  final _errorStream = PublishSubject<Error>();

  Stream<PersonalProfileResponse> get updateProfileStream => _updateProfileResponse.stream;

  Stream<bool> get loadingStream => _loadingStream.stream;

  Stream<Error> get errorStream => _errorStream.stream;
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _updateProfileResponse.close();
    _loadingStream.close();
    _errorStream.close();
  }

  Future<void> updateProfileData(String name,String email,String phoneNumber,String gender,
       String dob,String pas_xyz_id,String nationality_id,String height,String weight,
        String address_1,String address_2,String locality, String country_id,String city_id,String acesstoken,String userId) async {
    print("calling");
    if (isLoading) return;
    isLoading = true;
    _loadingStream.sink.add(true);
    PersonalProfileResponse profileResponseData = await repository.personalProfileResponse(name, email,
        phoneNumber, gender, dob, pas_xyz_id, nationality_id,height,weight,address_1,address_2,locality,country_id,city_id,acesstoken,userId);
    isLoading = false;
    _loadingStream.sink.add(isLoading);
    _updateProfileResponse.sink.add(profileResponseData);

  }
}