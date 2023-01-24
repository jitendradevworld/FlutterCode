import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/presentation/setting_security_page/models/setting_security_model.dart';
import 'package:flutter/material.dart';

class SettingSecurityController extends GetxController {
  SettingSecurityController(this.settingSecurityModelObj);

  TextEditingController group572Controller = TextEditingController();

  TextEditingController group572OneController = TextEditingController();

  Rx<SettingSecurityModel> settingSecurityModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group572Controller.dispose();
    group572OneController.dispose();
  }
}
