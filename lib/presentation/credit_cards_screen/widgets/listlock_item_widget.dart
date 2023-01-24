import '../controller/credit_cards_controller.dart';
import '../models/listlock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListlockItemWidget extends StatelessWidget {
  ListlockItemWidget(this.listlockItemModelObj);

  ListlockItemModel listlockItemModelObj;

  var controller = Get.find<CreditCardsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 45,
          width: 45,
          child: CustomImageView(
            svgPath: ImageConstant.imgLock,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
            top: 7,
            bottom: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_change_pic_code".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium14.copyWith(
                  height: getVerticalSize(
                    1.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "msg_withdraw_withou".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular11Bluegray400.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
