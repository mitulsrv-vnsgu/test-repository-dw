import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/custom_button.dart';
import 'package:auto_identification_percentage/widgets/custom_drop_down.dart';
import 'package:auto_identification_percentage/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:auto_identification_percentage/presentation/reading_list_options_bottomsheet/reading_list_options_bottomsheet.dart';
import 'package:auto_identification_percentage/presentation/reading_list_options_bottomsheet/controller/reading_list_options_controller.dart';
import 'package:auto_identification_percentage/presentation/save_to_bottomsheet/save_to_bottomsheet.dart';
import 'package:auto_identification_percentage/presentation/save_to_bottomsheet/controller/save_to_controller.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillBlack900,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 9),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMusic,
                                    height: getSize(24),
                                    width: getSize(24),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(right: 16),
                                    onTap: () {
                                      onTapImgMusic();
                                    }),
                                Padding(
                                    padding: getPadding(left: 17, top: 20),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgUnsplashpl5zzpp1zqg,
                                          height: getSize(60),
                                          width: getSize(60),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(30))),
                                      Padding(
                                          padding: getPadding(
                                              left: 10, top: 8, bottom: 6),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_talan_dorwart".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoBlack18),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text(
                                                                  "lbl_0_followers"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRomanRegular14)),
                                                          Container(
                                                              height:
                                                                  getSize(2),
                                                              width: getSize(2),
                                                              margin: getMargin(
                                                                  left: 8,
                                                                  top: 11,
                                                                  bottom: 4),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(1)))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 6,
                                                                      top: 1),
                                                              child: Text(
                                                                  "lbl_12_following"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRomanRegular14))
                                                        ]))
                                              ]))
                                    ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomButton(
                                                  height: getVerticalSize(40),
                                                  width: getHorizontalSize(167),
                                                  text: "lbl_view_stats".tr,
                                                  variant: ButtonVariant
                                                      .FillWhiteA700,
                                                  shape: ButtonShape
                                                      .CircleBorder20,
                                                  padding: ButtonPadding
                                                      .PaddingAll11,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoRegular14,
                                                  onTap: onTapViewstats),
                                              CustomButton(
                                                  height: getVerticalSize(40),
                                                  width: getHorizontalSize(167),
                                                  text: "msg_edit_your_profile"
                                                      .tr,
                                                  margin: getMargin(left: 8),
                                                  variant: ButtonVariant
                                                      .OutlineWhiteA700,
                                                  shape: ButtonShape
                                                      .CircleBorder20,
                                                  padding: ButtonPadding
                                                      .PaddingAll11,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoRegular14WhiteA700,
                                                  onTap:
                                                      onTapEdityourprofileOne)
                                            ]))),
                                Padding(
                                    padding: getPadding(left: 16, top: 43),
                                    child: Row(children: [
                                      Text("lbl_saved".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRomanRegular14WhiteA70099),
                                      Padding(
                                          padding: getPadding(left: 24),
                                          child: Text("lbl_lists".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular14WhiteA70099))
                                    ])),
                                Container(
                                    height: getVerticalSize(1),
                                    width: getHorizontalSize(37),
                                    margin: getMargin(left: 16, top: 7),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700)),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Divider(
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.whiteA70065)),
                                CustomDropDown(
                                    focusNode: FocusNode(),
                                    icon: Container(
                                        margin: getMargin(left: 30, right: 16),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowdown)),
                                    hintText: "lbl_public".tr,
                                    margin: getMargin(top: 19),
                                    alignment: Alignment.center,
                                    items: controller
                                        .profileModelObj.value.dropdownItemList,
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    }),
                                Padding(
                                    padding: getPadding(left: 16, top: 22),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgUnsplashjmati5qygy,
                                          height: getSize(16),
                                          width: getSize(16),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(8))),
                                      Padding(
                                          padding: getPadding(left: 6, top: 1),
                                          child: Text("lbl_paityn_press".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular12))
                                    ])),
                                Container(
                                    width: getHorizontalSize(251),
                                    margin: getMargin(left: 16, top: 11),
                                    child: Text("msg_how_to_improve_your".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanSemiBold16)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 19, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
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
                                                      left: 6,
                                                      top: 9,
                                                      bottom: 9),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA70099,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  1)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 2,
                                                      bottom: 2),
                                                  child: Text(
                                                      "lbl_3_min_read".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular12WhiteA70099)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgBookmark,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  onTap: () {
                                                    onTapImgBookmark();
                                                  }),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMusic,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  margin: getMargin(left: 20),
                                                  onTap: () {
                                                    onTapImgMusicOne();
                                                  })
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 10),
                                        child: Divider(
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA70065))),
                                Padding(
                                    padding: getPadding(left: 16, top: 11),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgUnsplashjmati5qygy,
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
                                    ])),
                                Container(
                                    width: getHorizontalSize(221),
                                    margin: getMargin(left: 16, top: 12),
                                    child: Text("msg_top_9_ux_trends".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanSemiBold16)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 22, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
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
                                                      left: 6,
                                                      top: 9,
                                                      bottom: 9),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA70099,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  1)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 2,
                                                      bottom: 2),
                                                  child: Text(
                                                      "lbl_3_min_read".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular12WhiteA70099)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgBookmark,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  onTap: () {
                                                    onTapImgBookmarkOne();
                                                  }),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMusic,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  margin: getMargin(left: 20),
                                                  onTap: () {
                                                    onTapImgMusicTwo();
                                                  })
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 10),
                                        child: Divider(
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA70065)))
                              ])),
                      Spacer()
                    ])),
            floatingActionButton: CustomFloatingButton(
                height: 58,
                width: 58,
                onTap: () {
                  onTapBtnFloatingactionbutton();
                },
                child: CustomImageView(
                    svgPath: ImageConstant.imgClose,
                    height: getVerticalSize(29.0),
                    width: getHorizontalSize(29.0)))));
  }

  onTapBtnFloatingactionbutton() {
    Get.toNamed(AppRoutes.createPostScreen);
  }

  onTapImgMusic() {
    Get.bottomSheet(
      ReadingListOptionsBottomsheet(
        Get.put(
          ReadingListOptionsController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapViewstats() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapEdityourprofileOne() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapImgBookmark() {
    Get.bottomSheet(
      SaveToBottomsheet(
        Get.put(
          SaveToController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapImgMusicOne() {
    Get.bottomSheet(
      ReadingListOptionsBottomsheet(
        Get.put(
          ReadingListOptionsController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapImgBookmarkOne() {
    Get.bottomSheet(
      SaveToBottomsheet(
        Get.put(
          SaveToController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapImgMusicTwo() {
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
