import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.height,
      this.width,
      this.text,
      this.margin,
      this.onTap,
      this.alignment,
      this.padding,
      this.shape,
      this.variant,
      this.fontStyle
  });

  double? width;

  ButtonFontStyle? fontStyle;

  ButtonVariant? variant;

  ButtonShape? shape;

  double? height;

  String? text;

  ButtonPadding? padding;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  Alignment? alignment;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

   _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
         default:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.FillDarkRed:
        return BorderSide(
          color: ColorConstant.darkRed,
          width: getHorizontalSize(
            1.00,
          ),
        );
          default:
        return BorderSide(
          color: ColorConstant.darkRed,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillDarkRed:
        return ColorConstant.darkRed;
           default:
        return ColorConstant.darkRed;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsSemiBold14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Aller',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Aller',
          fontWeight: FontWeight.w600,
        );
    }
  }


  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll15:
        return getPadding(left: 5, top: 5, bottom: 5, right: 5);
    default:
        return getPadding(
          all: 15,
        );
    }

  }}
  enum ButtonPadding {
  PaddingAll15
  }

  enum ButtonShape {
  RoundedBorder20,
}

enum ButtonVariant {
  FillDarkRed}

  enum ButtonFontStyle {
  PoppinsSemiBold14
  }