import '../controller/accounts_controller.dart';
import '../models/accounts_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AccountsItemWidget extends StatelessWidget {
  AccountsItemWidget(this.accountsItemModelObj);

  AccountsItemModel accountsItemModelObj;

  var controller = Get.find<AccountsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 20,
        right: 15,
        bottom: 20,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 45,
            width: 45,
            shape: IconButtonShape.CircleBorder20,
            child: CustomImageView(
              svgPath: ImageConstant.imgInfo,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 5,
              right: 4,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_my_balance".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular12.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "lbl_12_750".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold16Indigo600.copyWith(
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
      ),
    );
  }
}
