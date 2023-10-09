import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webatmega/views/themes/app_text_style.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("No Data ", style: AppTextStyle.titleTextStyle),
    );
  }
}
