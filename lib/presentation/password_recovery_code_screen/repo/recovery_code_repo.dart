import 'package:fresh_mandi/data/apiClient/app_url.dart';
import 'package:fresh_mandi/data/apiClient/base_api.dart';

class RecoveryCodeRepo {
  final _apiService = NetworkApiServices();

Future<dynamic> recoveryCode(var data) async {
  dynamic response = _apiService.postApi(data, AppUrl.verifyForgotOtp, "");
  print("Forgot Code Recovery" + response.toString());
  return response;
}


  
}