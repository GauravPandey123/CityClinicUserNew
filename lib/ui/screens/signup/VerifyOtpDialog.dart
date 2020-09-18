import 'dart:async';

import 'package:city_clinic_user/model/signup/reposne/signup_response.dart';
import 'package:city_clinic_user/ui/screens/SucessScreenDart.dart';
import 'package:city_clinic_user/ui/screens/signup/bloc/VerifyOtpBloc.dart';
import 'package:city_clinic_user/ui/screens/updateprofilesignup/ProfileDetails.dart';
import 'package:city_clinic_user/utils/AppUtils.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyOtpDialog extends StatefulWidget {
  final User user;

  VerifyOtpDialog({Key key, @required this.user}) : super(key: key);

  // VerifyOtpDialog(this.user);

  @override
  _VerifyOtpDialogState createState() => _VerifyOtpDialogState();
}

class _VerifyOtpDialogState extends State<VerifyOtpDialog> {
  Timer _timer;
  int _start = 60;
  String userLogId;
  String phoneNo;
  String otp;
  final TextEditingController _otpController = TextEditingController();

  final VerifyOtpBloc _bloc = VerifyOtpBloc();

  @override
  void initState() {
    super.initState();

    _listenOTP();
    startTimer();
    userLogId = widget.user.userLogId.toString();
    phoneNo = widget.user.phoneNumber.toString();

    _bloc.verifyOtpResponse.listen((event) {
      if (event.user != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => ProfileDetails(user: event.user)));
      }
    });

    _bloc.loadingStream.listen((event) {
      if (context != null) {
        if (event) {
          AppUtils.showLoadingDialog(context);
        } else {
          Navigator.pop(context);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 12,
      backgroundColor: Colors.white,
      child: _buildResetPassChild(context),
    );
  }

  _buildResetPassChild(BuildContext context) => SingleChildScrollView(
        child: Container(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    "Verify Mobile",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  subtitle: RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 14, color: greyOneColor),
                        text:
                            "Enter OTP sent to ${widget.user.phoneNumber}. Wrong Mobile number ",
                        children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                },
                              text: "Click Here.",
                              style: TextStyle(color: blueTextColor))
                        ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "OTP",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                    child: TextFormField(
                  controller: _otpController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Enter Otp"),
                )),
                SizedBox(
                  height: 40,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  color: blueTextColor,
                  onPressed: () => {
                    _bloc.verifyOtpData(
                        userLogId,
                        phoneNo,
                        _otpController.text.toString(),
                        widget.user.userId.toString())
                  },
                  minWidth: 200,
                  height: 42,
                  child: Text(
                    "Verify",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 14, color: greyOneColor),
                        text: "Resend OTP : ",
                        children: [
                          TextSpan(
                              text: "$_start Sec",
                              style: TextStyle(color: Colors.red))
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      );

  @override
  void dispose() {
    _bloc.dispose();
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  void _listenOTP() async {
    await SmsAutoFill().listenForCode;
  }
}
