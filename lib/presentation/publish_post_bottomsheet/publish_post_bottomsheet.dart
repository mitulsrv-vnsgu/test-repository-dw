import 'controller/publish_post_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PublishPostBottomsheet extends StatelessWidget {
  PublishPostBottomsheet(this.controller);

  PublishPostController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillGray90006,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: getPadding(left: 15, top: 22),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgOffer,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(bottom: 53)),
                            Padding(
                                padding: getPadding(left: 17),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(36),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 9,
                                                    right: 10,
                                                    bottom: 9),
                                                decoration: AppDecoration
                                                    .txtFillGray800
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder3),
                                                child: Text("lbl_art".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular12WhiteA700)),
                                            Container(
                                                width: getHorizontalSize(68),
                                                margin: getMargin(left: 5),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 8,
                                                    right: 10,
                                                    bottom: 8),
                                                decoration: AppDecoration
                                                    .txtFillGray800
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder3),
                                                child: Text("lbl_creativity".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular12WhiteA700)),
                                            Container(
                                                width: getHorizontalSize(56),
                                                margin: getMargin(left: 5),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 8,
                                                    right: 10,
                                                    bottom: 8),
                                                decoration: AppDecoration
                                                    .txtFillGray800
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder3),
                                                child: Text("lbl_design".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular12WhiteA700))
                                          ]),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomButton(
                                                    height: getVerticalSize(34),
                                                    width:
                                                        getHorizontalSize(90),
                                                    text: "lbl_programming".tr,
                                                    variant: ButtonVariant
                                                        .FillGray800,
                                                    shape: ButtonShape
                                                        .RoundedBorder3),
                                                CustomButton(
                                                    height: getVerticalSize(34),
                                                    width:
                                                        getHorizontalSize(79),
                                                    text: "lbl_technology".tr,
                                                    margin: getMargin(left: 5),
                                                    variant: ButtonVariant
                                                        .FillGray800,
                                                    shape: ButtonShape
                                                        .RoundedBorder3)
                                              ]))
                                    ]))
                          ])),
                  CustomButton(
                      height: getVerticalSize(60),
                      width: double.maxFinite,
                      text: "lbl_post".tr,
                      margin: getMargin(top: 30),
                      shape: ButtonShape.Square,
                      padding: ButtonPadding.PaddingAll14,
                      fontStyle: ButtonFontStyle.RobotoRomanRegular14,
                      onTap: onTapPost)
                ])));
  }

  onTapPost() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }
}
