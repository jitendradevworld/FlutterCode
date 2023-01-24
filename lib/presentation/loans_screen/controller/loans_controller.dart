import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/presentation/loans_screen/models/loans_model.dart';
import 'package:flutter/material.dart';

class LoansController extends GetxController {
  TextEditingController group420Controller = TextEditingController();

  Rx<LoansModel> loansModelObj = LoansModel().obs;

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
