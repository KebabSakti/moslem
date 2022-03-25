import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moslem/presentation/core/config/app_theme.dart';
import 'package:moslem/presentation/core/service/global_service.dart';
import 'package:moslem/presentation/page/intro/controller/intro_page_controller.dart';

class IntroPage extends GetView<IntroPageController> {
  IntroPage({Key? key}) : super(key: key);

  final GlobalService globalService = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final theme = globalService.theme;
      return Scaffold(
          backgroundColor: theme().backgroundColor,
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(theme().mediumPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text(
                      'Switch Theme',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: theme().primaryColor,
                      onPrimary: theme().onPrimaryColor,
                    ),
                    onPressed: () {
                      globalService.theme.value =
                          theme().isLight ? AppTheme.dark : AppTheme.light;
                    },
                  ),
                  const SizedBox(height: 20),
                  Obx(() {
                    return Text(
                      'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme().onBackgroundColor),
                    );
                  }),
                ],
              ),
            ),
          ));
    });
  }
}
