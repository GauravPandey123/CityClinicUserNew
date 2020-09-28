 import 'package:city_clinic_user/model/verifyotp/VerifyOtpResponse.dart';
import 'package:city_clinic_user/ui/screens/repository/base.dart';
import 'package:rxdart/rxdart.dart';

class VerifyOtpBloc extends BaseBloc{

  final _verifyOtpStream = PublishSubject<VerifyOtpResponse>();
  final _loadingStream = PublishSubject<bool>();
  final _errorStream = PublishSubject<Error>();

  Stream<VerifyOtpResponse> get verifyOtpResponse => _verifyOtpStream.stream;

  Stream<bool> get loadingStream => _loadingStream.stream;

  Stream<Error> get errorStream => _errorStream.stream;
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _verifyOtpStream?.close();
    _loadingStream?.close();
    _errorStream?.close();
  }

  void verifyOtpData(String userOtpLogId,String phoneNumber,String otp,String userId) async {
    print("calling");
    if (isLoading) return;
    isLoading = true;
    _loadingStream.sink.add(true);
    VerifyOtpResponse verifyOtpData = await repository.verifyOtp(userOtpLogId,phoneNumber,otp,userId);
    isLoading = false;
    _loadingStream.sink.add(isLoading);
    _verifyOtpStream.sink.add(verifyOtpData);

  }
}