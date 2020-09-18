import 'package:shared_preferences/shared_preferences.dart';

class PrefsHelper{

 static saveUserId(String userId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('userId', userId);
 }

}