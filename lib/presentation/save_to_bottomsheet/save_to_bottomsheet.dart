import 'controller/save_to_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/custom_button.dart';
import 'package:auto_identification_percentage/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SaveToBottomsheet extends StatelessWidget {
  SaveToBottomsheet(this.controller);

  SaveToController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            padding: getPadding(top: 13, bottom: 13),
            decoration: AppDecoration.fillGray90006,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text("lbl_save_to".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanMedium16),
              Padding(
                  padding: getPadding(top: 14),
                  child: Divider(
                      thickness: getVerticalSize(1),
                      color: ColorConstant.whiteA7005e)),
              CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.group104Controller,
                  hintText: "msg_create_new_list".tr,
                  margin: getMargin(top: 12),
                  variant: TextFormFieldVariant.UnderLineWhiteA7005e,
                  fontStyle: TextFormFieldFontStyle.RobotoRomanRegular14),
              CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.group103Controller,
                  hintText: "lbl_reading_list".tr,
                  margin: getMargin(top: 13),
                  variant: TextFormFieldVariant.UnderLineWhiteA7005e,
                  fontStyle: TextFormFieldFontStyle.RobotoRomanRegular14,
                  prefix: Container(
                      padding: getPadding(all: 2),
                      margin: getMargin(top: 1, right: 10, bottom: 16),
                      decoration: BoxDecoration(
                          color: ColorConstant.green800,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(7))),
                      child:
                          CustomImageView(svgPath: ImageConstant.imgCheckmark)),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(30)),
                  suffix: Container(
                      margin: getMargin(left: 30, top: 1, right: 1, bottom: 17),
                      child: CustomImageView(svgPath: ImageConstant.imgLock)),
                  suffixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(30))),
              CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.group102Controller,
                  hintText: "lbl_test".tr,
                  margin: getMargin(top: 12),
                  variant: TextFormFieldVariant.UnderLineWhiteA7005e,
                  fontStyle: TextFormFieldFontStyle.RobotoRomanRegular14,
                  prefix: Container(
                      margin: getMargin(top: 1, right: 10, bottom: 16),
                      child:
                          CustomImageView(svgPath: ImageConstant.imgGroup96)),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(31))),
              CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.group101Controller,
                  hintText: "lbl_archive".tr,
                  margin: getMargin(top: 12),
                  variant: TextFormFieldVariant.UnderLineWhiteA7005e,
                  fontStyle: TextFormFieldFontStyle.RobotoRomanRegular14,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                      margin: getMargin(top: 1, right: 10, bottom: 16),
                      child:
                          CustomImageView(svgPath: ImageConstant.imgGroup96)),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(31)),
                  suffix: Container(
                      margin: getMargin(left: 30, top: 2, right: 1, bottom: 17),
                      child: CustomImageView(svgPath: ImageConstant.imgLock)),
                  suffixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(31))),
              CustomButton(
                  height: getVerticalSize(46),
                  width: getHorizontalSize(342),
                  text: "lbl_done".tr,
                  margin: getMargin(top: 12, bottom: 9),
                  shape: ButtonShape.CircleBorder23,
                  padding: ButtonPadding.PaddingAll14,
                  fontStyle: ButtonFontStyle.RobotoRegular14WhiteA700,
                  onTap: onTapDone)
            ])));
  }

  onTapDone() {
// TODO: implement Actions
  }
}
