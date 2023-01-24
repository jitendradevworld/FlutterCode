import '../controller/services_controller.dart';
import '../models/listlocation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListlocationItemWidget extends StatelessWidget {
  ListlocationItemWidget(this.listlocationItemModelObj);

  ListlocationItemModel listlocationItemModelObj;

  var controller = Get.find<ServicesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 15,
          ),
          padding: getPadding(
            left: 24,
            top: 20,
            right: 24,
            bottom: 20,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Row(
            children: [
              CustomIconButton(
                height: 45,
                width: 45,
                shape: IconButtonShape.CircleBorder20,
                child: CustomImageView(
                  svgPath: ImageConstant.imgLocation,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 2,
                  right: 10,
                  bottom: 1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_life_insurance".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "msg_unlimited_prote".tr,
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
            ],
          ),
        ),
      ),
    );
  }
}
