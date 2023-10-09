import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../screens/home.dart';
import '../screens/page_found.dart';
import '../screens/splash.dart';
import '../screens/view_post.dart';
import 'routes_constant.dart';

sealed class AppRouter {
  const AppRouter._();

  static List<GetPage> pages = <GetPage>[
    GetPage(name: RoutesConstant.unknown, page: () => const PageNotFound()),

    GetPage(name: RoutesConstant.initial, page: () =>const SplashScreen()),

    GetPage(name: RoutesConstant.home, page: () =>const HomeScreen()),

    GetPage(name: RoutesConstant.viewPost, page: () => const ViewPost ()),

  ];
}


