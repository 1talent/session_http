import 'package:flutter/material.dart';
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
    return GetMaterialApp(
      title: 'Session HTTP',
      initialRoute: AppNames.mainScreen,
      debugShowCheckedModeBanner: false,
      getPages: App.screens,
    );
  }
}
