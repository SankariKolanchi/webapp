import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:webatmega/core/api/api_request.dart';

sealed class DependencyInjection {
  const DependencyInjection._();
  static Future init() async {
    Get.put<GetConnect>(GetConnect());
    Get.put<ApiRequest>(ApiRequest());
  }
}
