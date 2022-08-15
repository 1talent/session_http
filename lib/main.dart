import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:session_http/app/presentation/routes/app_names.dart';
import 'package:session_http/app/presentation/routes/app_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


   return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // the builder attribute is assigned an anonymous function
      // with arguments context and child, returning GetMaterialApp
      builder: (context , child) {
        // this is the original GetMaterialApp return
        return GetMaterialApp(
      title: 'Session HTTP',
      initialRoute: AppNames.mainScreen,
      debugShowCheckedModeBanner: false,
      getPages: App.screens,
      theme: ThemeData(
          useMaterial3: false,
          primarySwatch: Colors.amber,
          scaffoldBackgroundColor: const Color(0xffF9F9F9)),
    );
      },
    );

   
  }
}
