import '../accounts_screen/widgets/accounts_item_widget.dart';
import '../accounts_screen/widgets/listalarm_item_widget.dart';
import '../accounts_screen/widgets/listrefresh_item_widget.dart';
import 'controller/accounts_controller.dart';
import 'models/accounts_item_model.dart';
import 'models/listalarm_item_model.dart';
import 'models/listrefresh_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:jitendra_s_application2/widgets/app_bar/custom_app_bar.dart';

class AccountsScreen extends GetWidget<AccountsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10003,
            appBar: CustomAppBar(
                height: getVerticalSize(122.00),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24, top: 7, right: 24),
                          child: Row(children: [
                            AppbarImage(
                                height: getSize(24.00),
                                width: getSize(24.00),
                                svgPath: ImageConstant.imgMenu,
                                margin: getMargin(top: 5, bottom: 6)),
                            AppbarTitle(
                                text: "lbl_accounts".tr,
                                margin: getMargin(left: 93, top: 4, bottom: 5)),
                            AppbarCircleimage(
                                imagePath: ImageConstant.imgEllipse37,
                                margin: getMargin(left: 82))
                          ])),
                      AppbarSearchview(
                          hintText: "msg_search_for_some".tr,
                          controller: controller.group420Controller,
                          margin: getMargin(
                              left: 24, top: 20, right: 24, bottom: 20))
                    ]),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 24, top: 24, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 1),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(86.00),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(16.00),
                                              crossAxisSpacing:
                                                  getHorizontalSize(16.00)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.accountsModelObj
                                          .value.accountsItemList.length,
                                      itemBuilder: (context, index) {
                                        AccountsItemModel model = controller
                                            .accountsModelObj
                                            .value
                                            .accountsItemList[index];
                                        return AccountsItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("msg_last_transactio".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterSemiBold16Bluegray80001
                                          .copyWith(
                                              height: getVerticalSize(1.00)))),
                              Container(
                                  margin: getMargin(top: 16, right: 2),
                                  padding: getPadding(all: 20),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(12.00));
                                      },
                                      itemCount: controller.accountsModelObj
                                          .value.listalarmItemList.length,
                                      itemBuilder: (context, index) {
                                        ListalarmItemModel model = controller
                                            .accountsModelObj
                                            .value
                                            .listalarmItemList[index];
                                        return ListalarmItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_my_card".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeAll();
                                            },
                                            child: Padding(
                                                padding: getPadding(bottom: 2),
                                                child: Text("lbl_see_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold14
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00)))))
                                      ])),
                              Container(
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 14),
                                  decoration: AppDecoration.fillIndigo600
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 23,
                                                    top: 20,
                                                    right: 27),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_balance"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular1274
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_5_756"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular1853
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(1.00))))
                                                          ]),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgChipcard,
                                                          height:
                                                              getSize(33.00),
                                                          width: getSize(33.00),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 4))
                                                    ]))),
                                        Padding(
                                            padding:
                                                getPadding(left: 23, top: 23),
                                            child: Row(children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_card_holder".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular1158
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.00))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text(
                                                            "lbl_eddy_cusuma"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular1505
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.00))))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(left: 65),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_valid_thru".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular1158
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_12_22".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular1505
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.00))))
                                                      ]))
                                            ])),
                                        Container(
                                            margin: getMargin(top: 18),
                                            padding:
                                                getPadding(top: 16, bottom: 16),
                                            decoration: AppDecoration
                                                .gradientWhiteA70026WhiteA70026
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderBL15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 3, bottom: 3),
                                                      child: Text("msg_3778".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular1737
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgContrast,
                                                      height: getVerticalSize(
                                                          28.00),
                                                      width: getHorizontalSize(
                                                          41.00))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("msg_debit_credit".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16
                                          .copyWith(
                                              height: getVerticalSize(1.00)))),
                              Container(
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 16),
                                  padding: getPadding(
                                      left: 21, top: 16, right: 21, bottom: 16),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 1, right: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      height: getSize(12.00),
                                                      width: getSize(12.00),
                                                      margin: getMargin(
                                                          top: 1, bottom: 1),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo600,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      4.00)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 10),
                                                      child: Text(
                                                          "lbl_debit".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  Container(
                                                      height: getSize(12.00),
                                                      width: getSize(12.00),
                                                      margin: getMargin(
                                                          left: 20,
                                                          top: 1,
                                                          bottom: 1),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      4.00)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 10),
                                                      child: Text(
                                                          "lbl_credit".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00))))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 16, right: 2),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup27Indigo600,
                                                      height: getVerticalSize(
                                                          153.00),
                                                      width: getHorizontalSize(
                                                          25.00)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup27Indigo600,
                                                      height: getVerticalSize(
                                                          120.00),
                                                      width: getHorizontalSize(
                                                          25.00),
                                                      margin:
                                                          getMargin(top: 33)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup27,
                                                      height: getVerticalSize(
                                                          75.00),
                                                      width: getHorizontalSize(
                                                          25.00),
                                                      margin:
                                                          getMargin(top: 78)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup27Indigo600,
                                                      height: getVerticalSize(
                                                          129.00),
                                                      width: getHorizontalSize(
                                                          25.00),
                                                      margin:
                                                          getMargin(top: 24)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup27Indigo600,
                                                      height: getVerticalSize(
                                                          136.00),
                                                      width: getHorizontalSize(
                                                          25.00),
                                                      margin:
                                                          getMargin(top: 17)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup27,
                                                      height: getVerticalSize(
                                                          96.00),
                                                      width: getHorizontalSize(
                                                          25.00),
                                                      margin:
                                                          getMargin(top: 57)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup27Indigo600,
                                                      height: getVerticalSize(
                                                          143.00),
                                                      width: getHorizontalSize(
                                                          25.00),
                                                      margin:
                                                          getMargin(top: 10))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 3, top: 10, right: 7),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_sat".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Text("lbl_sun".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Text("lbl_mon".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Text("lbl_tue".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Text("lbl_wed".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Text("lbl_thu".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Text("lbl_fri".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00)))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_invoices_sent".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16
                                          .copyWith(
                                              height: getVerticalSize(1.00)))),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(all: 20),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder17),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(15.00));
                                      },
                                      itemCount: controller.accountsModelObj
                                          .value.listrefreshItemList.length,
                                      itemBuilder: (context, index) {
                                        ListrefreshItemModel model = controller
                                            .accountsModelObj
                                            .value
                                            .listrefreshItemList[index];
                                        return ListrefreshItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapTxtSeeAll() {
    Get.toNamed(AppRoutes.creditCardsScreen);
  }
}
