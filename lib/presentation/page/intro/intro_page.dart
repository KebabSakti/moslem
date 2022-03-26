import 'package:cached_network_image/cached_network_image.dart';
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
      final theme = globalService.theme();
      return Scaffold(
        backgroundColor: theme.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(theme.mediumPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor:
                          theme.isLight ? Colors.grey[300] : Colors.black12,
                      child: IconButton(
                        onPressed: () {
                          globalService.theme.value =
                              (theme.isLight) ? AppTheme.dark : AppTheme.light;
                        },
                        constraints: const BoxConstraints(),
                        padding: const EdgeInsets.all(0),
                        icon: Icon(
                          theme.isLight
                              ? Icons.dark_mode_rounded
                              : Icons.wb_sunny_rounded,
                          color: theme.isLight
                              ? Colors.black38
                              : Colors.amber[400],
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
                            fontSize: theme.bigFont,
                            color: theme.onBackgroundColor,
                          ),
                        ),
                        Text(
                          'Jummat, 25 Maret',
                          style: TextStyle(
                            fontSize: theme.smallFont,
                            color: theme.onBackgroundColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: theme.mediumPadding),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: theme.mediumPadding),
                child: Ink(
                  height: Get.size.width / 2 - theme.mediumPadding,
                  decoration: BoxDecoration(
                    color: theme.accentColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 6, bottom: 2),
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://cdn-icons-png.flaticon.com/512/1146/1146869.png',
                            width: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(theme.mediumPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fajar',
                              style: TextStyle(
                                color: theme.onAccentColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '04:58 AM',
                              style: TextStyle(
                                color: theme.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 40,
                              ),
                            ),
                            Text(
                              '13 menit sebelum azan',
                              style: TextStyle(
                                color: theme.onAccentColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: theme.mediumPadding),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: theme.mediumPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Ink(
                        height: Get.size.width / 2 - theme.mediumPadding,
                        decoration: BoxDecoration(
                          color: theme.accentColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 6, bottom: 2),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://cdn-icons-png.flaticon.com/512/869/869869.png',
                                  width: 80,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(theme.mediumPadding),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dhuhr',
                                    style: TextStyle(
                                      color: theme.onAccentColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '12:17 PM',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: theme.mediumPadding),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Ink(
                        height: Get.size.width / 2 - theme.mediumPadding,
                        decoration: BoxDecoration(
                          color: theme.accentColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 6, bottom: 2),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://cdn-icons-png.flaticon.com/512/414/414927.png',
                                  width: 80,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(theme.mediumPadding),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ashar',
                                    style: TextStyle(
                                      color: theme.onAccentColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '03:22 PM',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: theme.mediumPadding),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: theme.mediumPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Ink(
                        height: Get.size.width / 2 - theme.mediumPadding,
                        decoration: BoxDecoration(
                          color: theme.accentColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 6, bottom: 4),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://cdn-icons-png.flaticon.com/512/3094/3094159.png',
                                  width: 70,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(theme.mediumPadding),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Maghrib',
                                    style: TextStyle(
                                      color: theme.onAccentColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '06:21 PM',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: theme.mediumPadding),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Ink(
                        height: Get.size.width / 2 - theme.mediumPadding,
                        decoration: BoxDecoration(
                          color: theme.accentColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 6, bottom: 6),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://cdn-icons-png.flaticon.com/512/740/740860.png',
                                  width: 65,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(theme.mediumPadding),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Isha',
                                    style: TextStyle(
                                      color: theme.onAccentColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '07:29 PM',
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      );
    });
  }
}
