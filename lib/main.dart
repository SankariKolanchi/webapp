import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webatmega/views/routes/app_routes.dart';
import 'package:webatmega/views/routes/routes_constant.dart';
import 'package:webatmega/views/themes/app_theme.dart';

import 'di/dependency_injection.dart';

void main() {
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appTheme,
      getPages: AppRouter.pages,
      debugShowCheckedModeBanner: false,
      unknownRoute: AppRouter.pages[0],
      initialRoute: RoutesConstant.initial,

    );
  }
}



