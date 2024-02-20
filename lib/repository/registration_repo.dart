import '../data/apiClient/app_url.dart';
import '../data/apiClient/base_api.dart';

class RegisterRepository {
  final _apiService = NetworkApiServices();
  Future<dynamic> registerApi(var data) async {
    dynamic response = _apiService.postApi(data, AppUrl.registerUrl, "");
    return response;
  }
}
