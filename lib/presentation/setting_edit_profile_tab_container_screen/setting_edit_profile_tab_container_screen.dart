import 'controller/setting_edit_profile_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';
import 'package:jitendra_s_application2/presentation/setting_edit_profile_page/setting_edit_profile_page.dart';
import 'package:jitendra_s_application2/presentation/setting_preference_page/setting_preference_page.dart';
import 'package:jitendra_s_application2/presentation/setting_security_page/setting_security_page.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:jitendra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:jitendra_s_application2/widgets/app_bar/custom_app_bar.dart';

class SettingEditProfileTabContainerScreen
    extends GetWidget<SettingEditProfileTabContainerController> {
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
                      text: "lbl_setting".tr,
                      margin: getMargin(
                        left: 104,
                        top: 6,
                        bottom: 3,
                      ),
                    ),
                    AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse37,
                      margin: getMargin(
                        left: 94,
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
            child: Container(
              margin: getMargin(
                left: 24,
                top: 24,
                right: 24,
              ),
              padding: getPadding(
                left: 20,
                top: 22,
                right: 20,
                bottom: 22,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder17,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      285.00,
                    ),
                    child: TabBar(
                      controller: controller.group1798Controller,
                      tabs: [
                        Tab(
                          text: "lbl_edit_profile".tr,
                        ),
                        Tab(
                          text: "lbl_preference".tr,
                        ),
                        Tab(
                          text: "lbl_security".tr,
                        ),
                      ],
                      labelColor: ColorConstant.indigo600,
                      unselectedLabelColor: ColorConstant.blueGray400,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      285.00,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray10005,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 25,
                      bottom: 167,
                    ),
                    height: getVerticalSize(
                      1046.00,
                    ),
                    child: TabBarView(
                      controller: controller.group1798Controller,
                      children: [
                        SettingEditProfilePage(),
                        SettingPreferencePage(),
                        SettingSecurityPage(),
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
