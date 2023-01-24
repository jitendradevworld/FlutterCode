import '../controller/home_controller.dart';
import '../models/listvideocamera_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListvideocameraItemWidget extends StatelessWidget {
  ListvideocameraItemWidget(this.listvideocameraItemModelObj);

  ListvideocameraItemModel listvideocameraItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 50,
          width: 50,
          shape: IconButtonShape.CircleBorder25,
          child: CustomImageView(
            svgPath: ImageConstant.imgVideocamera,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 15,
            top: 8,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_deposit_from_my".tr,
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
                  "lbl_28_january_2021".tr,
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
            top: 18,
            bottom: 18,
          ),
          child: Text(
            "lbl_850".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium11.copyWith(
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
