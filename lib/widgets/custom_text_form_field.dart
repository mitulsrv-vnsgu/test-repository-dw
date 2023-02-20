import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      filled: _setFilled(),
      isDense: true,
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.RobotoRomanRegular14:
        return TextStyle(
          color: ColorConstant.green800,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.RobotoRomanRegular14WhiteA70099:
        return TextStyle(
          color: ColorConstant.whiteA70099,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.RobotoRomanRegular16Green800:
        return TextStyle(
          color: ColorConstant.green800,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineWhiteA7005e:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.whiteA7005e,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.whiteA700,
          ),
        );
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineWhiteA700:
        return false;
      case TextFormFieldVariant.UnderLineWhiteA7005e:
        return false;
      case TextFormFieldVariant.None:
        return false;
      default:
        return false;
    }
  }
}

enum TextFormFieldVariant {
  None,
  UnderLineWhiteA700,
  UnderLineWhiteA7005e,
}

enum TextFormFieldFontStyle {
  RobotoRomanRegular16,
  RobotoRomanRegular14,
  RobotoRomanRegular14WhiteA70099,
  RobotoRomanRegular16Green800,
}
