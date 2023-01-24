import '../controller/loans_controller.dart';
import '../models/listprice_three_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListpriceThreeItemWidget extends StatelessWidget {
  ListpriceThreeItemWidget(this.listpriceThreeItemModelObj);

  ListpriceThreeItemModel listpriceThreeItemModelObj;

  var controller = Get.find<LoansController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: getPadding(
            top: 5,
            bottom: 4,
          ),
          child: Text(
            "lbl_100_000".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Bluegray900.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 52,
            top: 5,
            bottom: 4,
          ),
          child: Text(
            "lbl_40_500".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Bluegray900.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
        CustomButton(
          height: 25,
          width: 70,
          text: "lbl_repay".tr,
          margin: getMargin(
            left: 60,
          ),
        ),
      ],
    );
  }
}
