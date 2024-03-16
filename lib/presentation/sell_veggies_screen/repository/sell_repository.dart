import 'dart:convert';
import '../../../data/apiClient/app_url.dart';
import '../../../data/apiClient/base_api.dart';
import '../../../widgets/constants.dart';
import '../../../widgets/shared_preference.dart';

class SellVeggiesRepository {
  final _apiService = NetworkApiServices();

  Future<List<dynamic>> sellVeggies() async {
    try {
      String token = PreferenceUtils.getString(AppConstants.token);
      var response = await _apiService.getApi(AppUrl.sellveggies, token);
      print("the response is == $response");
      return response;
    } catch (e) {
      print(e.toString());
      throw Exception('Failed to load vegetables');
    }
  }
}
