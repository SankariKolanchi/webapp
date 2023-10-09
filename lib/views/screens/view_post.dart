import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:webatmega/controllers/home_controllers.dart';
import 'package:webatmega/views/widgets/empty_widgets.dart';

import '../themes/app_text_style.dart';

class ViewPost extends StatelessWidget {
  const ViewPost({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "View Posts",
        ),
      ),
      body: Obx(() {
        if (homeController.isPostDetailLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        if (homeController.postDetailsModel.value.id == null) {
          return Center(child: EmptyWidget());
        }
        final postModel = homeController.postDetailsModel.value;
        return Card(
          child: ListTile(
            title: Text(
              postModel.title.toString(),
              style: AppTextStyle.blackF14W500TextStyle,
            ),
            subtitle: Text(
              postModel.body.toString(),
              style: AppTextStyle.blackF12W400TextStyle,
            ),
          ),
        );
      }),
    );
  }
}
