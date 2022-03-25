import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ramadanapp/screens/home_page/home_page.dart';
import 'package:ramadanapp/screens/roja_vongo/roja_vongo.dart';
import 'package:ramadanapp/screens/sehriIftarDoa/sehri_iftar.dart';
import 'package:ramadanapp/screens/tarabihsalat/tarabih_salat.dart';
import 'package:ramadanapp/screens/tasbih/tasbih.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: (Tasbih()),
      ),
    );
  }
}
