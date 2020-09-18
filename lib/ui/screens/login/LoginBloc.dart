import 'package:city_clinic_user/model/login/response/LoginResponse.dart';
import 'package:city_clinic_user/ui/screens/repository/base.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends BaseBloc {
  final _loginStream = PublishSubject<LoginResponse>();
  final _loadingStream = PublishSubject<bool>();
  final _errorStream = PublishSubject<Error>();

  Stream<LoginResponse> get loginStream => _loginStream.stream;

  Stream<bool> get loadingStream => _loadingStream.stream;

  Stream<Error> get errorStream => _errorStream.stream;
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _loginStream?.close();
    _loadingStream?.close();
    _errorStream?.close();
  }

  void loginData(String userCred, String password, String longitude, String latitude) async {
    print("calling");
    if (isLoading) return;
    isLoading = true;
    _loadingStream.sink.add(true);
    LoginResponse loginData = await repository.login(userCred, password,
        longitude, latitude);
    isLoading = false;
    _loadingStream.sink.add(isLoading);
    _loginStream.sink.add(loginData);


  }
}
