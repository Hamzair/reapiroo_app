import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString isHome = "main".obs;
  RxBool isMenu = true.obs;
  RxBool isTitle = false.obs;
  RxBool isNotification = true.obs;
  RxBool isSecondIcon = false.obs;
  RxString title = "".obs;

  void updateAppBar (bool menu,bool titleBool, bool notification, bool secondIcon, String titleString){
    isMenu.value = menu;
    isNotification.value = notification;
    isTitle.value = titleBool;
    isSecondIcon.value = secondIcon;
    title.value = titleString;
  }

}