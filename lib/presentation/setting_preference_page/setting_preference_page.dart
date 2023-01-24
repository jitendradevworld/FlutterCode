import 'controller/setting_preference_controller.dart';
import 'models/setting_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_button.dart';
import 'package:jitendra_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingPreferencePage extends StatelessWidget {
  SettingPreferenceController controller =
      Get.put(SettingPreferenceController(SettingPreferenceModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_currency".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular13Bluegray400.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
                CustomTextFormField(
                  width: 287,
                  focusNode: FocusNode(),
                  controller: controller.priceController,
                  hintText: "lbl_usd".tr,
                  margin: getMargin(
                    top: 7,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "lbl_time_zone".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular13Bluegray400.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                CustomTextFormField(
                  width: 285,
                  focusNode: FocusNode(),
                  controller: controller.timeZoneOneController,
                  hintText: "msg_gmt_12_00_int".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                  textInputAction: TextInputAction.done,
                ),
                Padding(
                  padding: getPadding(
                    top: 22,
                  ),
                  child: Text(
                    "lbl_notification".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium14.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child: Row(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.green600,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            24.00,
                          ),
                          width: getHorizontalSize(
                            44.00,
                          ),
                          padding: getPadding(
                            all: 1,
                          ),
                          decoration: AppDecoration.fillGreen600.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgEllipse32,
                                height: getSize(
                                  21.00,
                                ),
                                width: getSize(
                                  21.00,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 12,
                          top: 5,
                          bottom: 2,
                        ),
                        child: Text(
                          "msg_i_send_or_recei".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Row(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.gray10005,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            24.00,
                          ),
                          width: getHorizontalSize(
                            44.00,
                          ),
                          padding: getPadding(
                            all: 1,
                          ),
                          decoration: AppDecoration.fillGray10005.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgEllipse32WhiteA700,
                                height: getSize(
                                  21.00,
                                ),
                                width: getSize(
                                  21.00,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 12,
                          top: 4,
                          bottom: 3,
                        ),
                        child: Text(
                          "msg_i_receive_merch".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: Row(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: getMargin(
                          top: 4,
                          bottom: 4,
                        ),
                        color: ColorConstant.green600,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            24.00,
                          ),
                          width: getHorizontalSize(
                            44.00,
                          ),
                          padding: getPadding(
                            all: 1,
                          ),
                          decoration: AppDecoration.fillGreen600.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgEllipse32,
                                height: getSize(
                                  21.00,
                                ),
                                width: getSize(
                                  21.00,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          209.00,
                        ),
                        margin: getMargin(
                          left: 12,
                        ),
                        child: Text(
                          "msg_there_are_recom".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  height: 40,
                  width: 287,
                  text: "lbl_save".tr,
                  margin: getMargin(
                    top: 16,
                  ),
                  variant: ButtonVariant.FillIndigo600,
                  shape: ButtonShape.RoundedBorder7,
                  padding: ButtonPadding.PaddingAll11,
                  fontStyle: ButtonFontStyle.InterMedium15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
