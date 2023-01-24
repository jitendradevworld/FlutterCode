import '../credit_cards_screen/widgets/listbalance2_item_widget.dart';
import '../credit_cards_screen/widgets/listellipsethirtythree_item_widget.dart';
import '../credit_cards_screen/widgets/listfile_item_widget.dart';
import '../credit_cards_screen/widgets/listlock_item_widget.dart';
import 'controller/credit_cards_controller.dart';
import 'models/listbalance2_item_model.dart';
import 'models/listellipsethirtythree_item_model.dart';
import 'models/listfile_item_model.dart';
import 'models/listlock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:jitendra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:jitendra_s_application2/widgets/custom_button.dart';
import 'package:jitendra_s_application2/widgets/custom_text_form_field.dart';

class CreditCardsScreen extends GetWidget<CreditCardsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray10003,
        appBar: CustomAppBar(
          height: getVerticalSize(
            122.00,
          ),
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 7,
                  right: 24,
                ),
                child: Row(
                  children: [
                    AppbarImage(
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                      svgPath: ImageConstant.imgMenu,
                      margin: getMargin(
                        top: 5,
                        bottom: 6,
                      ),
                    ),
                    AppbarTitle(
                      text: "lbl_credit_cards".tr,
                      margin: getMargin(
                        left: 78,
                        top: 3,
                        bottom: 6,
                      ),
                    ),
                    AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse37,
                      margin: getMargin(
                        left: 68,
                      ),
                    ),
                  ],
                ),
              ),
              AppbarSearchview(
                hintText: "msg_search_for_some".tr,
                controller: controller.group420Controller,
                margin: getMargin(
                  left: 24,
                  top: 20,
                  right: 24,
                  bottom: 20,
                ),
              ),
            ],
          ),
          styleType: Style.bgFillWhiteA700,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 24,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_my_cards".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold16.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        184.00,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 14,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                20.00,
                              ),
                            );
                          },
                          itemCount: controller.creditCardsModelObj.value
                              .listbalance2ItemList.length,
                          itemBuilder: (context, index) {
                            Listbalance2ItemModel model = controller
                                .creditCardsModelObj
                                .value
                                .listbalance2ItemList[index];
                            return Listbalance2ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "msg_card_expense_st".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      327.00,
                    ),
                    margin: getMargin(
                      top: 10,
                    ),
                    padding: getPadding(
                      left: 63,
                      top: 18,
                      right: 63,
                      bottom: 18,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgGroup346chart,
                          height: getVerticalSize(
                            191.00,
                          ),
                          width: getHorizontalSize(
                            200.00,
                          ),
                          margin: getMargin(
                            top: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 11,
                            top: 27,
                            right: 11,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    11.00,
                                  ),
                                );
                              },
                              itemCount: controller.creditCardsModelObj.value
                                  .listellipsethirtythreeItemList.length,
                              itemBuilder: (context, index) {
                                ListellipsethirtythreeItemModel model =
                                    controller.creditCardsModelObj.value
                                        .listellipsethirtythreeItemList[index];
                                return ListellipsethirtythreeItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Text(
                      "lbl_card_list".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                      right: 24,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              12.00,
                            ),
                          );
                        },
                        itemCount: controller
                            .creditCardsModelObj.value.listfileItemList.length,
                        itemBuilder: (context, index) {
                          ListfileItemModel model = controller
                              .creditCardsModelObj
                              .value
                              .listfileItemList[index];
                          return ListfileItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                    ),
                    child: Text(
                      "lbl_add_new_card".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      327.00,
                    ),
                    margin: getMargin(
                      top: 15,
                    ),
                    padding: getPadding(
                      left: 20,
                      top: 17,
                      right: 20,
                      bottom: 17,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            283.00,
                          ),
                          child: Text(
                            "msg_credit_card_gen".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12.copyWith(
                              height: getVerticalSize(
                                1.51,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 20,
                          ),
                          child: Text(
                            "lbl_card_type".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtInterRegular13Bluegray400.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          width: 287,
                          focusNode: FocusNode(),
                          controller: controller.group572Controller,
                          hintText: "lbl_classic".tr,
                          margin: getMargin(
                            top: 7,
                          ),
                          variant: TextFormFieldVariant.OutlineTeal50,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 16,
                          ),
                          child: Text(
                            "lbl_name_on_card".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtInterRegular13Bluegray400.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          width: 287,
                          focusNode: FocusNode(),
                          controller: controller.group572OneController,
                          hintText: "lbl_my_cards".tr,
                          margin: getMargin(
                            top: 8,
                          ),
                          variant: TextFormFieldVariant.OutlineTeal50,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 16,
                          ),
                          child: Text(
                            "lbl_card_number".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtInterRegular13Bluegray400.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          width: 287,
                          focusNode: FocusNode(),
                          controller: controller.group572TwoController,
                          hintText: "msg".tr,
                          margin: getMargin(
                            top: 8,
                          ),
                          variant: TextFormFieldVariant.OutlineTeal50,
                          textInputType: TextInputType.visiblePassword,
                          isObscureText: true,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 17,
                          ),
                          child: Text(
                            "lbl_expiration_date".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtInterRegular13Bluegray400.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          width: 287,
                          focusNode: FocusNode(),
                          controller: controller.dateController,
                          hintText: "lbl_25_january_2025".tr,
                          margin: getMargin(
                            top: 7,
                          ),
                          variant: TextFormFieldVariant.OutlineTeal50,
                          textInputAction: TextInputAction.done,
                        ),
                        CustomButton(
                          height: 40,
                          width: 285,
                          text: "lbl_add_card".tr,
                          margin: getMargin(
                            top: 20,
                            bottom: 3,
                          ),
                          variant: ButtonVariant.FillIndigo600,
                          shape: ButtonShape.RoundedBorder7,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterMedium15,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_card_setting".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16Bluegray80001.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      325.00,
                    ),
                    margin: getMargin(
                      top: 10,
                    ),
                    padding: getPadding(
                      all: 20,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgFloatingicon,
                              height: getSize(
                                45.00,
                              ),
                              width: getSize(
                                45.00,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 12,
                                top: 5,
                                bottom: 2,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_block_card".tr,
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
                                      top: 4,
                                    ),
                                    child: Text(
                                      "msg_instantly_block".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterRegular12.copyWith(
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
                        Padding(
                          padding: getPadding(
                            top: 15,
                            right: 88,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    15.00,
                                  ),
                                );
                              },
                              itemCount: controller.creditCardsModelObj.value
                                  .listlockItemList.length,
                              itemBuilder: (context, index) {
                                ListlockItemModel model = controller
                                    .creditCardsModelObj
                                    .value
                                    .listlockItemList[index];
                                return ListlockItemWidget(
                                  model,
                                );
                              },
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
        ),
      ),
    );
  }
}
