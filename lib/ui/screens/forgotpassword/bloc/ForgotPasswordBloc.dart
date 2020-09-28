
import 'package:city_clinic_user/model/forgotpassword/response/ForgotPasswordResponse.dart';
import 'package:city_clinic_user/ui/screens/repository/base.dart';
import 'package:rxdart/rxdart.dart';

class ForgotPasswordBloc extends BaseBloc{

  final _forgotPasswordStream = PublishSubject<ForgotPasswordResponse>();
  final _loadingStream = PublishSubject<bool>();
  final _errorStream = PublishSubject<Error>();
  Stream <ForgotPasswordResponse> get _forgotPasswordstream => _forgotPasswordStream.stream;
  Stream<bool> get loadingStream => _loadingStream.stream;
  Stream<Error> get errorStream => _errorStream.stream;
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _forgotPasswordStream?.close();
    _loadingStream?.close();
    _errorStream?.close();
  }






}