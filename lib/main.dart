import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moslem/dependency.dart';
import 'presentation/core/config/app_const.dart';
import 'presentation/core/config/app_route.dart';
import 'package:moslem/presentation/core/service/global_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _services();

  runApp(const Moslem());
}

class Moslem extends StatelessWidget {
  const Moslem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'OpenSans'),
      initialBinding: Dependency(),
      getPages: AppRoute.routes,
      initialRoute: kIntroPage,
    );
  }
}

Future<void> _services() async {
  Get.put(GlobalService());
}
