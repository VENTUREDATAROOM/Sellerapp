import 'package:fresh_mandi/data/apiClient/app_url.dart';
import 'package:fresh_mandi/data/apiClient/base_api.dart';
import 'package:get/get.dart';

class OtpRepository {
  final _apiService = NetworkApiServices();

  Future<dynamic> verifyOtpApi(var data) async {
    dynamic response = _apiService.postApi(data, AppUrl.loginOtp, "");
    print("##########################" + response.toString());
    return response;
  }
}
