import '../controller/transactions_controller.dart';
import '../models/transactions_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TransactionsItemWidget extends StatelessWidget {
  TransactionsItemWidget(this.transactionsItemModelObj);

  TransactionsItemModel transactionsItemModelObj;

  var controller = Get.find<TransactionsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 35,
          width: 35,
          margin: getMargin(
            bottom: 1,
          ),
          variant: IconButtonVariant.OutlineRed700,
          shape: IconButtonShape.RoundedBorder17,
          child: CustomImageView(
            svgPath: ImageConstant.imgArrow,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "msg_spotify_subscri".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium13.copyWith(
                  height: getVerticalSize(
                    1.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  "msg_28_jan_12_30_a".tr,
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
            top: 9,
            bottom: 10,
          ),
          child: Text(
            "lbl_2_500".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium13Red700.copyWith(
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
