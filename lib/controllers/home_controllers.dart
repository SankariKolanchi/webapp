import 'package:get/get.dart';
import 'package:webatmega/core/api/api_constant.dart';
import 'package:webatmega/models/post_detail_model.dart';

import '../core/api/api_request.dart';
import '../models/post_model.dart';

class HomeController extends GetxController {
  final _apiRequest = Get.find<ApiRequest>();
  RxList<PostModel> postmodel = <PostModel>[].obs;
  RxBool isLoading = false.obs;
  Rx<PostDetailsModel> postDetailsModel = PostDetailsModel().obs;
  RxBool isPostDetailLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await getPostModel();
  }

  Future getPostModel() async {
    isLoading.value = true;
    final response = await _apiRequest.request(ApiConstants.posts, "get");
    isLoading.value = false;
    if (response != null) {

      postmodel.value = postModelFromJson(response);
    }
  }

  Future getPostModelDetails(String id) async {
    isPostDetailLoading.value = true;
    final response =
        await _apiRequest.request("${ApiConstants.posts}$id", "get");
    isPostDetailLoading.value = false;
    if (response != null) {
      postDetailsModel.value = postDetailsModelFromJson(response);
    }
  }
}
