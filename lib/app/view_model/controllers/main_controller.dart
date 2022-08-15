import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MainController extends GetxController {
  RxInt navIndex = RxInt(0);

  changeNavIndex(int index) {
    navIndex.value = index;
  }

  fetchSomething() async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    final result = await http.get(url);

    //print(result.body);
  }
}
