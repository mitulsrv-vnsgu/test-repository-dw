import 'controller/article_detail_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/app_bar/custom_app_bar.dart';
import 'package:auto_identification_percentage/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ArticleDetailScreen extends GetWidget<ArticleDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black90002,
        appBar: CustomAppBar(
          height: getVerticalSize(
            81,
          ),
          leadingWidth: 32,
          leading: CustomImageView(
            imagePath: ImageConstant.imgUnsplashjmati5qygy,
            height: getSize(
              16,
            ),
            width: getSize(
              16,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8,
              ),
            ),
            margin: getMargin(
              left: 16,
              top: 26,
              bottom: 14,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 6,
            ),
            child: Row(
              children: [
                Text(
                  "lbl_paityn_press".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanRegular12WhiteA700a2,
                ),
                Container(
                  height: getSize(
                    2,
                  ),
                  width: getSize(
                    2,
                  ),
                  margin: getMargin(
                    left: 5,
                    top: 5,
                    bottom: 7,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA70099,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                  ),
                  child: Text(
                    "lbl_dec_23_2021".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanRegular12WhiteA70099,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            CustomIconButton(
              height: 32,
              width: 32,
              margin: getMargin(
                left: 16,
                top: 12,
                right: 16,
                bottom: 12,
              ),
              variant: IconButtonVariant.FillGray90004,
              shape: IconButtonShape.CircleBorder16,
              padding: IconButtonPadding.PaddingAll6,
              child: CustomImageView(
                svgPath: ImageConstant.imgClose,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            all: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  316,
                ),
                child: Text(
                  "msg_how_to_improve_your".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanSemiBold20,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  334,
                ),
                margin: getMargin(
                  top: 32,
                ),
                child: Text(
                  "msg_lorem_ipsum_is_simply".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanRegular14WhiteA700992,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  334,
                ),
                margin: getMargin(
                  top: 24,
                ),
                child: Text(
                  "msg_lorem_ipsum_is_simply2".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanRegular14WhiteA700992,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  284,
                ),
                margin: getMargin(
                  top: 29,
                ),
                child: Text(
                  "msg_steve_schoger".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanSemiBold20,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  334,
                ),
                margin: getMargin(
                  top: 22,
                  bottom: 5,
                ),
                child: Text(
                  "msg_lorem_ipsum_is_simply".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanRegular14WhiteA700992,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: getVerticalSize(
            123,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: getHorizontalSize(
                    334,
                  ),
                  child: Text(
                    "msg_lorem_ipsum_is_simply2".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanRegular14WhiteA700992,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 42,
                  ),
                  padding: getPadding(
                    left: 15,
                    top: 13,
                    right: 15,
                    bottom: 13,
                  ),
                  decoration: AppDecoration.fillGray900,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgSearchWhiteA700,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        margin: getMargin(
                          left: 1,
                          bottom: 31,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 5,
                          top: 2,
                          bottom: 33,
                        ),
                        child: Text(
                          "lbl_1_6k".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular16WhiteA70087,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgSearchWhiteA70024x24,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        margin: getMargin(
                          left: 21,
                          bottom: 31,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 5,
                          top: 2,
                          bottom: 33,
                        ),
                        child: Text(
                          "lbl_22".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular16WhiteA70087,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgUpload,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        margin: getMargin(
                          left: 33,
                          bottom: 31,
                        ),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgBookmark,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        margin: getMargin(
                          bottom: 31,
                        ),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgCar,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        margin: getMargin(
                          bottom: 31,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
