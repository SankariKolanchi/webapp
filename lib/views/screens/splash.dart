import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webatmega/views/routes/routes_constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   Future.delayed(const Duration(seconds: 2),(){
     Get.offAllNamed(RoutesConstant.home);
   });
    return  const Scaffold (
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
