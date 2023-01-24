import 'controller/setting_security_controller.dart';
import 'models/setting_security_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_button.dart';
import 'package:jitendra_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingSecurityPage extends StatelessWidget {
  SettingSecurityController controller =
      Get.put(SettingSecurityController(SettingSecurityModel().obs));

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
                  "msg_two_factor_auth".tr,
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
                    top: 11,
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
                          172.00,
                        ),
                        margin: getMargin(
                          left: 12,
                        ),
                        child: Text(
                          "msg_enable_or_disab".tr,
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
                Padding(
                  padding: getPadding(
                    top: 20,
                  ),
                  child: Text(
                    "lbl_change_password".tr,
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
                  child: Text(
                    "msg_current_passwor".tr,
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
                  controller: controller.group572Controller,
                  hintText: "lbl_charlene_123".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "lbl_new_password".tr,
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
                  controller: controller.group572OneController,
                  hintText: "lbl_charlene_123".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                  textInputAction: TextInputAction.done,
                ),
                CustomButton(
                  height: 40,
                  width: 285,
                  text: "lbl_save".tr,
                  margin: getMargin(
                    top: 20,
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
