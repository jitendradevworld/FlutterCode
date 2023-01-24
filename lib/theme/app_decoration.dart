import 'package:flutter/material.dart';
import 'package:jitendra_s_application2/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: ColorConstant.gray10001,
      );
  static BoxDecoration get fillIndigo600 => BoxDecoration(
        color: ColorConstant.indigo600,
      );
  static BoxDecoration get fillGray10003 => BoxDecoration(
        color: ColorConstant.gray10003,
      );
  static BoxDecoration get fillGreen600 => BoxDecoration(
        color: ColorConstant.green600,
      );
  static BoxDecoration get fillIndigo500 => BoxDecoration(
        color: ColorConstant.indigo500,
      );
  static BoxDecoration get fillGray10005 => BoxDecoration(
        color: ColorConstant.gray10005,
      );
  static BoxDecoration get fillIndigo300 => BoxDecoration(
        color: ColorConstant.indigo300,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get gradientWhiteA70026WhiteA70026 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.whiteA70026,
            ColorConstant.whiteA70026,
          ],
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderBL15 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
  );

  static BorderRadius roundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17.00,
    ),
  );

  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25.00,
    ),
  );

  static BorderRadius circleBorder85 = BorderRadius.circular(
    getHorizontalSize(
      85.00,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );
}
