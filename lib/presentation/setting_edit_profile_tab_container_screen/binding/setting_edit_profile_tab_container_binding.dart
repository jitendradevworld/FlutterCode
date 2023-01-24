import '../controller/setting_edit_profile_tab_container_controller.dart';
import 'package:get/get.dart';

class SettingEditProfileTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingEditProfileTabContainerController());
  }
}
