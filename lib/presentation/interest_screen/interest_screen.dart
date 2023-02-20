import '../interest_screen/widgets/chipviewframethree_item_widget.dart';
import 'controller/interest_controller.dart';
import 'models/chipviewframethree_item_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_image.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_title.dart';
import 'package:auto_identification_percentage/widgets/app_bar/custom_app_bar.dart';
import 'package:auto_identification_percentage/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class InterestScreen extends GetWidget<InterestController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray90001,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 46,
                leading: AppbarImage(
                    height: getSize(30),
                    width: getSize(30),
                    svgPath: ImageConstant.imgArrowdown,
                    margin: getMargin(left: 16, top: 5, bottom: 5),
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarTitle(text: "msg_welcome_to_medium".tr)),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 44),
                          child: Text("msg_are_you_interested".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanBold20)),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text("msg_choose_three_or".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRobotoRomanRegular14WhiteA70099)),
                      Container(
                          height: getVerticalSize(580),
                          width: double.maxFinite,
                          margin: getMargin(top: 52),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 39, right: 38),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Wrap(
                                                  runSpacing:
                                                      getVerticalSize(5),
                                                  spacing: getHorizontalSize(5),
                                                  children: List<
                                                          Widget>.generate(
                                                      controller
                                                          .interestModelObj
                                                          .value
                                                          .chipviewframethreeItemList
                                                          .length, (index) {
                                                    ChipviewframethreeItemModel
                                                        model = controller
                                                                .interestModelObj
                                                                .value
                                                                .chipviewframethreeItemList[
                                                            index];
                                                    return ChipviewframethreeItemWidget(
                                                        model);
                                                  })),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 8,
                                                      right: 5),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 9,
                                                                right: 12,
                                                                bottom: 9),
                                                            decoration: AppDecoration
                                                                .outlineWhiteA7007f
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder18),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_work"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoRomanRegular14WhiteA70099)
                                                                ])),
                                                        Container(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 9,
                                                                right: 12,
                                                                bottom: 9),
                                                            decoration: AppDecoration
                                                                .outlineWhiteA7007f
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder18),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_race"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoRomanRegular14WhiteA70099)
                                                                ])),
                                                        Container(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 8,
                                                                right: 12,
                                                                bottom: 8),
                                                            decoration: AppDecoration
                                                                .outlineWhiteA7007f
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder18),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              2),
                                                                      child: Text(
                                                                          "lbl_relationship"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRobotoRomanRegular14WhiteA70099))
                                                                ])),
                                                        Container(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 9,
                                                                right: 12,
                                                                bottom: 9),
                                                            decoration: AppDecoration
                                                                .outlineWhiteA7007f
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder18),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_math"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoRomanRegular14WhiteA70099)
                                                                ]))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Divider(
                                              thickness: getVerticalSize(1),
                                              color: ColorConstant.whiteA70065),
                                          Container(
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 31,
                                                  right: 16,
                                                  bottom: 31),
                                              decoration:
                                                  AppDecoration.fillGray90002,
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomButton(
                                                        height:
                                                            getVerticalSize(46),
                                                        width:
                                                            getHorizontalSize(
                                                                342),
                                                        text: "lbl_next".tr,
                                                        margin:
                                                            getMargin(top: 1),
                                                        variant: ButtonVariant
                                                            .FillGray90003,
                                                        shape: ButtonShape
                                                            .CircleBorder23,
                                                        padding: ButtonPadding
                                                            .PaddingAll14,
                                                        fontStyle: ButtonFontStyle
                                                            .RobotoRegular14WhiteA70087,
                                                        onTap: onTapNext)
                                                  ]))
                                        ]))
                              ]))
                    ]))));
  }

  onTapNext() {
    Get.toNamed(AppRoutes.recommendedScreen);
  }

  onTapArrowleft() {
    Get.back();
  }
}
