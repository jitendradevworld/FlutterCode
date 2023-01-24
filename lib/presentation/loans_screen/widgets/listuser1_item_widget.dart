import '../controller/loans_controller.dart';
import '../models/listuser1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listuser1ItemWidget extends StatelessWidget {
  Listuser1ItemWidget(this.listuser1ItemModelObj);

  Listuser1ItemModel listuser1ItemModelObj;

  var controller = Get.find<LoansController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 24,
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
                  svgPath: ImageConstant.imgUser45x45,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 4,
                  right: 29,
                  bottom: 2,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_personal_loans".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12.copyWith(
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
                        "lbl_50_000".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold16.copyWith(
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
