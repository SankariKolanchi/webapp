import 'package:get/get.dart';
import 'package:webatmega/core/api/api_constant.dart';

class ApiRequest {
  final _connect = Get.find<GetConnect>();
  Future<dynamic> request(String endPoints,String  method) async {
    Response response = await _connect.request("${ApiConstants.baseUrl}$endPoints", method);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
