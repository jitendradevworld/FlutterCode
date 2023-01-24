import '../transactions_tab_container_screen/widgets/listbalance1_item_widget.dart';
import 'controller/transactions_tab_container_controller.dart';
import 'models/listbalance1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/presentation/transactions_page/transactions_page.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:jitendra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:jitendra_s_application2/widgets/custom_button.dart';

class TransactionsTabContainerScreen
    extends GetWidget<TransactionsTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      text: "lbl_transactions".tr,
                      margin: getMargin(
                        left: 76,
                        top: 3,
                        bottom: 6,
                      ),
                    ),
                    AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse37,
                      margin: getMargin(
                        left: 66,
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
                  Padding(
                    padding: getPadding(
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_add_card2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold14.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                          itemCount: controller.transactionsTabContainerModelObj
                              .value.listbalance1ItemList.length,
                          itemBuilder: (context, index) {
                            Listbalance1ItemModel model = controller
                                .transactionsTabContainerModelObj
                                .value
                                .listbalance1ItemList[index];
                            return Listbalance1ItemWidget(
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
                      "lbl_my_expense".tr,
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
                    margin: getMargin(
                      top: 14,
                      right: 24,
                    ),
                    padding: getPadding(
                      left: 21,
                      top: 18,
                      right: 21,
                      bottom: 18,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 61,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  93.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "lbl_aug".tr,
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
                        Padding(
                          padding: getPadding(
                            left: 15,
                            top: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  142.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "lbl_sep".tr,
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
                        Padding(
                          padding: getPadding(
                            left: 15,
                            top: 58,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  96.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_oct".tr,
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
                        Padding(
                          padding: getPadding(
                            left: 15,
                            top: 105,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  49.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_nov".tr,
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
                        Padding(
                          padding: getPadding(
                            left: 7,
                            top: 2,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_12_500".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium13Bluegray800
                                    .copyWith(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  129.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                margin: getMargin(
                                  top: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.indigo600,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_dec".tr,
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
                        Padding(
                          padding: getPadding(
                            left: 7,
                            top: 66,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  88.00,
                                ),
                                width: getHorizontalSize(
                                  35.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_jan".tr,
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
                  Container(
                    width: getHorizontalSize(
                      325.00,
                    ),
                    margin: getMargin(
                      left: 1,
                      top: 24,
                    ),
                    child: TabBar(
                      controller: controller.group744Controller,
                      tabs: [
                        Tab(
                          text: "msg_all_transaction".tr,
                        ),
                        Tab(
                          text: "lbl_income".tr,
                        ),
                        Tab(
                          text: "lbl_expense".tr,
                        ),
                      ],
                      labelColor: ColorConstant.indigo600,
                      unselectedLabelColor: ColorConstant.blueGray400,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 22,
                      top: 37,
                      right: 44,
                    ),
                    height: getVerticalSize(
                      260.00,
                    ),
                    child: TabBarView(
                      controller: controller.group744Controller,
                      children: [
                        TransactionsPage(),
                        TransactionsPage(),
                        TransactionsPage(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 33,
                      top: 34,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(
                            16.00,
                          ),
                          width: getSize(
                            16.00,
                          ),
                          margin: getMargin(
                            top: 7,
                            bottom: 7,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                            top: 7,
                            bottom: 7,
                          ),
                          child: Text(
                            "lbl_previous".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: 30,
                          width: 30,
                          text: "lbl_1".tr,
                          margin: getMargin(
                            left: 10,
                          ),
                          variant: ButtonVariant.FillIndigo600,
                          shape: ButtonShape.RoundedBorder7,
                          padding: ButtonPadding.PaddingAll6,
                          fontStyle: ButtonFontStyle.InterMedium12,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 8,
                            bottom: 6,
                          ),
                          child: Text(
                            "lbl_22".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 22,
                            top: 8,
                            bottom: 6,
                          ),
                          child: Text(
                            "lbl_32".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 22,
                            top: 8,
                            bottom: 6,
                          ),
                          child: Text(
                            "lbl_42".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 22,
                            top: 8,
                            bottom: 6,
                          ),
                          child: Text(
                            "lbl_next".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightIndigo600,
                          height: getSize(
                            16.00,
                          ),
                          width: getSize(
                            16.00,
                          ),
                          margin: getMargin(
                            left: 6,
                            top: 7,
                            bottom: 7,
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
