import '../controller/credit_cards_controller.dart';
import '../models/listbalance2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Listbalance2ItemWidget extends StatelessWidget {
  Listbalance2ItemWidget(this.listbalance2ItemModelObj);

  Listbalance2ItemModel listbalance2ItemModelObj;

  var controller = Get.find<CreditCardsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 20,
          ),
          decoration: AppDecoration.fillIndigo600.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_balance".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular11.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Text(
                              "lbl_5_756".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16.copyWith(
                                height: getVerticalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgChipcard,
                        height: getSize(
                          29.00,
                        ),
                        width: getSize(
                          29.00,
                        ),
                        margin: getMargin(
                          left: 143,
                          bottom: 6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 19,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_card_holder".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular10.copyWith(
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
                            "lbl_eddy_cusuma".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular13.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        left: 50,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_valid_thru".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular10.copyWith(
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
                              "lbl_12_22".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular13.copyWith(
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
              Container(
                margin: getMargin(
                  top: 14,
                ),
                padding: getPadding(
                  left: 17,
                  top: 15,
                  right: 17,
                  bottom: 15,
                ),
                decoration:
                    AppDecoration.gradientWhiteA70026WhiteA70026.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: Text(
                        "msg_3778".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular15.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgContrast,
                      height: getVerticalSize(
                        18.00,
                      ),
                      width: getHorizontalSize(
                        27.00,
                      ),
                      margin: getMargin(
                        left: 57,
                        bottom: 1,
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
