import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:session_http/app/presentation/screens/account/account_screen.dart';
import 'package:session_http/app/presentation/screens/post/post_screen.dart';
import 'package:session_http/app/view_model/controllers/main_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainController mMainController = Get.put(MainController());
    return Obx(() {
      return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: IndexedStack(
          index: mMainController.navIndex.value,
          children: const [PostScreen(), AccountScreen()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Account",
            )
          ],
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          currentIndex: mMainController.navIndex.value,
          onTap: (int index) {
            mMainController.changeNavIndex(index);
          },
        ),
      );
    });
  }
}
