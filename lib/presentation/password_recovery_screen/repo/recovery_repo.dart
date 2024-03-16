import 'package:fresh_mandi/data/apiClient/app_url.dart';
import 'package:fresh_mandi/data/apiClient/base_api.dart';

class VerifyForgotPasswordByEmailOrPhone {
  final _apiService = NetworkApiServices();

Future<dynamic> verifyNumber(var data) async {
  dynamic response = _apiService.postApi(data, AppUrl.forgotByMobile, "");
  print("Forgot By Mobile Number" + response.toString());
  return response;
}

Future<dynamic> verifyEmail(var data) async {
  dynamic response = _apiService.postApi(data, AppUrl.forgotByEmail, "");
  print("Forgot By Email " + response.toString());
  return response;
}
  
}