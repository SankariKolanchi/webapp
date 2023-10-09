import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webatmega/models/post_model.dart';
import 'package:webatmega/views/routes/routes_constant.dart';
import 'package:webatmega/views/themes/app_text_style.dart';
import 'package:webatmega/views/widgets/empty_widgets.dart';

import '../../controllers/home_controllers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Post",
          style: AppTextStyle.appBarTitle,
        ),
      ),
      body: Obx(() {
        return Center(
          child: homeController.isLoading.value
              ? CircularProgressIndicator()
              : homeController.postmodel.isEmpty
                  ? EmptyWidget()
                  : ListView.builder(
                      itemCount: homeController.postmodel.length,
                      itemBuilder: (BuildContext context, i) {
                        final postModel = homeController.postmodel[i];
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
                            onTap: () {
                              Get.toNamed(
                                RoutesConstant.viewPost,
                              );
                              homeController.getPostModelDetails(
                                  postModel.userId.toString());
                            },
                          ),
                        );
                      }),
        );
      }),
    );
  }
}
