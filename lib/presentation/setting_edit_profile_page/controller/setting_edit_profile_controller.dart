import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/presentation/setting_edit_profile_page/models/setting_edit_profile_model.dart';
import 'package:flutter/material.dart';

class SettingEditProfileController extends GetxController {
  SettingEditProfileController(this.settingEditProfileModelObj);

  TextEditingController languageController = TextEditingController();

  TextEditingController languageOneController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  TextEditingController group572Controller = TextEditingController();

  TextEditingController group572OneController = TextEditingController();

  TextEditingController group572TwoController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController group572ThreeController = TextEditingController();

  Rx<SettingEditProfileModel> settingEditProfileModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    languageOneController.dispose();
    emailOneController.dispose();
    passwordOneController.dispose();
    group572Controller.dispose();
    group572OneController.dispose();
    group572TwoController.dispose();
    zipcodeController.dispose();
    group572ThreeController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    settingEditProfileModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    settingEditProfileModelObj.value.dropdownItemList.refresh();
  }
}
