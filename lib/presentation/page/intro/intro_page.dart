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
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(theme().mediumPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor:
                        theme().isLight ? Colors.grey[100] : Colors.grey[800],
                    child: IconButton(
                      onPressed: () {
                        globalService.theme.value =
                            (theme().isLight) ? AppTheme.dark : AppTheme.light;
                      },
                      constraints: const BoxConstraints(),
                      padding: const EdgeInsets.all(0),
                      icon: Icon(
                        theme().isLight ? Icons.dark_mode : Icons.sunny,
                        color: theme().isLight ? Colors.black45 : Colors.amber,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '13 Shaban, 1442 AH',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: theme().bigFont,
                          color: theme().onBackgroundColor,
                        ),
                      ),
                      Text(
                        'Jummat, 25 Maret',
                        style: TextStyle(
                          fontSize: theme().smallFont,
                          color: theme().onBackgroundColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      );
    });
  }
}
