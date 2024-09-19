import 'package:get/state_manager.dart';

class HomeController extends GetxController {
@override
void onReady(){
  super.onReady();
}

 var selectedIndex = 0.obs;

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }

@override
  void onClose() {
    super.onClose();
  }
}