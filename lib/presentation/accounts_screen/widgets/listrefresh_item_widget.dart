import '../controller/accounts_controller.dart';
import '../models/listrefresh_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListrefreshItemWidget extends StatelessWidget {
  ListrefreshItemWidget(this.listrefreshItemModelObj);

  ListrefreshItemModel listrefreshItemModelObj;

  var controller = Get.find<AccountsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomIconButton(
          height: 45,
          width: 45,
          child: CustomImageView(
            svgPath: ImageConstant.imgRefresh,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
            top: 6,
            bottom: 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_apple_store".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium14Bluegray80001.copyWith(
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
                  "lbl_5h_ago".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 15,
            bottom: 12,
          ),
          child: Text(
            "lbl_450".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold14.copyWith(
              height: getVerticalSize(
                1.00,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
