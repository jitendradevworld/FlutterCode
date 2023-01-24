import 'controller/setting_edit_profile_controller.dart';
import 'models/setting_edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/custom_button.dart';
import 'package:jitendra_s_application2/widgets/custom_drop_down.dart';
import 'package:jitendra_s_application2/widgets/custom_icon_button.dart';
import 'package:jitendra_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingEditProfilePage extends StatelessWidget {
  SettingEditProfileController controller =
      Get.put(SettingEditProfileController(SettingEditProfileModel().obs));

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
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getVerticalSize(
                      170.00,
                    ),
                    width: getHorizontalSize(
                      174.00,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse28,
                          height: getSize(
                            170.00,
                          ),
                          width: getSize(
                            170.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              85.00,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomIconButton(
                          height: 38,
                          width: 38,
                          margin: getMargin(
                            bottom: 20,
                          ),
                          variant: IconButtonVariant.FillIndigo600,
                          shape: IconButtonShape.RoundedBorder17,
                          padding: IconButtonPadding.PaddingAll9,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgTicket18x18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 22,
                  ),
                  child: Text(
                    "lbl_your_name".tr,
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
                  controller: controller.languageController,
                  hintText: "lbl_charlene_reed".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "lbl_user_name".tr,
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
                  controller: controller.languageOneController,
                  hintText: "lbl_charlene_reed".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "lbl_email".tr,
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
                  controller: controller.emailOneController,
                  hintText: "msg_charlenereed_gm".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "lbl_password".tr,
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
                  controller: controller.passwordOneController,
                  hintText: "lbl".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                  textInputType: TextInputType.visiblePassword,
                  isObscureText: true,
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "lbl_date_of_birth".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular13Bluegray400.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                CustomDropDown(
                  width: 285,
                  focusNode: FocusNode(),
                  icon: Container(
                    margin: getMargin(
                      left: 30,
                      right: 20,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgArrowdown,
                    ),
                  ),
                  hintText: "lbl_25_january_1990".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                  items: controller
                      .settingEditProfileModelObj.value.dropdownItemList,
                  onChanged: (value) {
                    controller.onSelected(value);
                  },
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "lbl_present_address".tr,
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
                  hintText: "msg_san_jose_calif".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "msg_permanent_addre".tr,
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
                  hintText: "msg_san_jose_calif".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: Text(
                    "lbl_city".tr,
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
                  controller: controller.group572TwoController,
                  hintText: "lbl_san_jose".tr,
                  margin: getMargin(
                    top: 7,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "lbl_postal_code".tr,
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
                  controller: controller.zipcodeController,
                  hintText: "lbl_45962".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: Text(
                    "lbl_country".tr,
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
                  controller: controller.group572ThreeController,
                  hintText: "lbl_usa".tr,
                  margin: getMargin(
                    top: 7,
                  ),
                  textInputAction: TextInputAction.done,
                ),
                CustomButton(
                  height: 40,
                  width: 287,
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
