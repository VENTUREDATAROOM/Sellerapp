import 'package:fresh_mandi/data/apiClient/app_url.dart';
import 'package:fresh_mandi/data/apiClient/base_api.dart';
import 'package:get/get.dart';

class LoginRepository {
  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiService.postApi(data, AppUrl.loginUrl, "");
    print("##########################" + response.toString());
    return response;
  }
}
