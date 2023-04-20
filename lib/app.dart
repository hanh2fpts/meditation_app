import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/routes.dart';
import 'package:meditation_app/utils/color_constant.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        useMaterial3: true,
        primarySwatch: colorContant.mycolor,
      ),
    );
  }
}
