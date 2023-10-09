import 'package:flutter/material.dart';
import 'package:webatmega/views/themes/app_theme.dart';

import '../themes/app_text_style.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Page Not Found",
        style: AppTextStyle.appBarTitle,
        ),
      ),
    );
  }
}
