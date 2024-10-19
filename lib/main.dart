import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();

  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812), //Xd or Figma art board size
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      rebuildFactor: (old, data) => true,
      builder: (context, widget) {
        return GetMaterialApp(
          title: "Ichiban Auto",
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          initialRoute: AppPages.INITIAL, // first screen to show when app is running
          getPages: AppPages.routes, // app screens
        );
      },
    ),
  );

}

