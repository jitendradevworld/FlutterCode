import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  TextEditingController group420Controller = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;

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
