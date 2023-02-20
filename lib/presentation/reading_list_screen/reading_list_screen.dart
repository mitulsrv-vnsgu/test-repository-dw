import 'controller/reading_list_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_image.dart';
import 'package:auto_identification_percentage/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:auto_identification_percentage/presentation/reading_list_options_bottomsheet/reading_list_options_bottomsheet.dart';
import 'package:auto_identification_percentage/presentation/reading_list_options_bottomsheet/controller/reading_list_options_controller.dart';

class ReadingListScreen extends GetWidget<ReadingListController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black90002,
            appBar: CustomAppBar(
                height: getVerticalSize(42),
                leadingWidth: 32,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowdown,
                    margin: getMargin(left: 8, top: 9, bottom: 9),
                    onTap: onTapArrowleft2),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgMusic,
                      margin: getMargin(left: 16, top: 9, right: 16, bottom: 9),
                      onTap: onTapMusic)
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 10, right: 16, bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_reading_list".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanExtraBold22),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUnsplashhd8klywryym,
                                height: getSize(34),
                                width: getSize(34),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(17))),
                            Padding(
                                padding: getPadding(left: 7, top: 1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_paityn_press".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtRobotoRomanRegular12),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text(
                                                        "lbl_5_february".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRomanRegular12WhiteA70099)),
                                                Container(
                                                    height: getSize(2),
                                                    width: getSize(2),
                                                    margin: getMargin(
                                                        left: 3,
                                                        top: 6,
                                                        bottom: 7),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA70099,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    1)))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 3, bottom: 1),
                                                    child: Text(
                                                        "lbl_37_stories".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRomanRegular12WhiteA70099)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgLock,
                                                    height: getSize(10),
                                                    width: getSize(10),
                                                    margin: getMargin(
                                                        left: 3,
                                                        top: 1,
                                                        bottom: 4))
                                              ]))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Row(children: [
                            Container(
                                height: getVerticalSize(14),
                                width: getHorizontalSize(2),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700)),
                            Padding(
                                padding: getPadding(left: 9),
                                child: Text("lbl_add_a_note".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoItalicRegular12))
                          ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUnsplashjmati5qygy,
                                            height: getSize(16),
                                            width: getSize(16),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8))),
                                        Padding(
                                            padding:
                                                getPadding(left: 6, top: 1),
                                            child: Text("lbl_paityn_press".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanRegular12))
                                      ]),
                                      Container(
                                          width: getHorizontalSize(251),
                                          margin: getMargin(top: 11),
                                          child: Text(
                                              "msg_how_to_improve_your".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanSemiBold16)),
                                      Container(
                                          width: getHorizontalSize(48),
                                          margin: getMargin(top: 9),
                                          padding: getPadding(
                                              left: 6,
                                              top: 1,
                                              right: 6,
                                              bottom: 1),
                                          decoration: AppDecoration
                                              .txtFillWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtCircleBorder10),
                                          child: Text("lbl_design".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular12Black9007b)),
                                      Padding(
                                          padding: getPadding(top: 25),
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 1),
                                                child: Text(
                                                    "lbl_dec_23_2021".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular12WhiteA70099)),
                                            Container(
                                                height: getSize(2),
                                                width: getSize(2),
                                                margin: getMargin(
                                                    left: 6, top: 9, bottom: 9),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .whiteA70099,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                1)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 4, top: 2, bottom: 2),
                                                child: Text("lbl_3_min_read".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular12WhiteA70099)),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgBookmarkWhiteA700,
                                                height: getSize(20),
                                                width: getSize(20),
                                                margin: getMargin(left: 118))
                                          ]))
                                    ]),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUnsplashcrczlse7hq,
                                    height: getSize(60),
                                    width: getSize(60),
                                    margin: getMargin(top: 72, bottom: 15))
                              ])),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Divider(
                              thickness: getVerticalSize(1),
                              color: ColorConstant.whiteA70065)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Row(children: [
                            Container(
                                height: getVerticalSize(14),
                                width: getHorizontalSize(2),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700)),
                            Padding(
                                padding: getPadding(left: 9),
                                child: Text("lbl_add_a_note".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoItalicRegular12))
                          ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUnsplashbqe0j0b26rq,
                                            height: getSize(16),
                                            width: getSize(16),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8))),
                                        Padding(
                                            padding:
                                                getPadding(left: 6, top: 1),
                                            child: Text("lbl_adison_philips".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanRegular12))
                                      ]),
                                      Container(
                                          width: getHorizontalSize(232),
                                          margin: getMargin(top: 10),
                                          child: Text("msg_5_websites_that".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanSemiBold16)),
                                      Padding(
                                          padding: getPadding(top: 14),
                                          child: Text("msg_selected_for_you".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular10)),
                                      Padding(
                                          padding: getPadding(top: 29),
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 1),
                                                child: Text(
                                                    "lbl_3_weeks_ago".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular12WhiteA70099)),
                                            Container(
                                                height: getSize(2),
                                                width: getSize(2),
                                                margin: getMargin(
                                                    left: 3, top: 9, bottom: 9),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .whiteA70099,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                1)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 3, top: 2, bottom: 2),
                                                child: Text("lbl_4_min_read".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular12WhiteA70099)),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgBookmarkWhiteA700,
                                                height: getSize(20),
                                                width: getSize(20),
                                                margin: getMargin(left: 123))
                                          ]))
                                    ]),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUnsplashx8ba0gwndei,
                                    height: getSize(60),
                                    width: getSize(60),
                                    margin: getMargin(top: 72, bottom: 15))
                              ])),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Divider(
                              thickness: getVerticalSize(1),
                              color: ColorConstant.whiteA70065)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Row(children: [
                            Container(
                                height: getVerticalSize(14),
                                width: getHorizontalSize(2),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700)),
                            Padding(
                                padding: getPadding(left: 9),
                                child: Text("lbl_add_a_note".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoItalicRegular12))
                          ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUnsplash3tll97hnjo,
                                            height: getSize(16),
                                            width: getSize(16),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8))),
                                        Padding(
                                            padding: getPadding(left: 6),
                                            child: Text("lbl_alena_carder".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanRegular12))
                                      ]),
                                      Container(
                                          width: getHorizontalSize(221),
                                          margin: getMargin(top: 12),
                                          child: Text("msg_top_9_ux_trends".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanSemiBold16)),
                                      Padding(
                                          padding: getPadding(top: 15),
                                          child: Text("msg_selected_for_you".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular10)),
                                      Padding(
                                          padding: getPadding(top: 29),
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 1),
                                                child: Text(
                                                    "lbl_3_weeks_ago".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular12WhiteA70099)),
                                            Container(
                                                height: getSize(2),
                                                width: getSize(2),
                                                margin: getMargin(
                                                    left: 3, top: 9, bottom: 9),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .whiteA70099,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                1)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 3, top: 2, bottom: 2),
                                                child: Text("lbl_4_min_read".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular12WhiteA70099)),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgBookmarkWhiteA700,
                                                height: getSize(20),
                                                width: getSize(20),
                                                margin: getMargin(left: 123))
                                          ]))
                                    ]),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUnsplash3rydgtaamja,
                                    height: getSize(60),
                                    width: getSize(60),
                                    margin: getMargin(top: 72, bottom: 15))
                              ])),
                      Padding(
                          padding: getPadding(top: 10, bottom: 7),
                          child: Divider(
                              thickness: getVerticalSize(1),
                              color: ColorConstant.whiteA70065))
                    ]))));
  }

  onTapArrowleft2() {
    Get.back();
  }

  onTapMusic() {
    Get.bottomSheet(
      ReadingListOptionsBottomsheet(
        Get.put(
          ReadingListOptionsController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
