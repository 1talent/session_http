import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt navIndex = RxInt(0);

  changeNavIndex(int index) {
    navIndex.value = index;
  }
}
