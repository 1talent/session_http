import 'package:get/get.dart';
import 'package:session_http/app/presentation/routes/app_names.dart';
import 'package:session_http/app/presentation/screens/main/main_screen.dart';

abstract class App {
  static final screens = [
    GetPage(name: AppNames.mainScreen, page: () => const MainScreen())
  ];
}
