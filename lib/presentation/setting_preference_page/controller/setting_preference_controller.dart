import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/presentation/setting_preference_page/models/setting_preference_model.dart';
import 'package:flutter/material.dart';

class SettingPreferenceController extends GetxController {
  SettingPreferenceController(this.settingPreferenceModelObj);

  TextEditingController priceController = TextEditingController();

  TextEditingController timeZoneOneController = TextEditingController();

  Rx<SettingPreferenceModel> settingPreferenceModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
    timeZoneOneController.dispose();
  }
}
