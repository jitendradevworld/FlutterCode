import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/presentation/setting_edit_profile_tab_container_screen/models/setting_edit_profile_tab_container_model.dart';
import 'package:flutter/material.dart';

class SettingEditProfileTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController group420Controller = TextEditingController();

  Rx<SettingEditProfileTabContainerModel>
      settingEditProfileTabContainerModelObj =
      SettingEditProfileTabContainerModel().obs;

  late TabController group1798Controller =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group420Controller.dispose();
  }
}
