import '../controller/explore_controller.dart';
import '../models/explore_item_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  ExploreItemWidget(this.exploreItemModelObj, {this.onTapImgBookmark});

  ExploreItemModel exploreItemModelObj;

  var controller = Get.find<ExploreController>();

  VoidCallback? onTapImgBookmark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomImageView(
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
                ),
                Padding(
                  padding: getPadding(
                    left: 6,
                    top: 1,
                  ),
                  child: Text(
                    "lbl_paityn_press".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanRegular12,
                  ),
                ),
              ],
            ),
            Container(
              width: getHorizontalSize(
                251,
              ),
              margin: getMargin(
                top: 11,
              ),
              child: Text(
                "msg_how_to_improve_your".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanSemiBold16,
              ),
            ),
            Container(
              width: getHorizontalSize(
                48,
              ),
              margin: getMargin(
                top: 9,
              ),
              padding: getPadding(
                left: 6,
                top: 1,
                right: 6,
                bottom: 1,
              ),
              decoration: AppDecoration.txtFillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.txtCircleBorder10,
              ),
              child: Text(
                "lbl_design".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular12Black9007b,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 25,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: getPadding(
                      top: 3,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_dec_23_2021".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular12WhiteA70099,
                    ),
                  ),
                  Container(
                    height: getSize(
                      2,
                    ),
                    width: getSize(
                      2,
                    ),
                    margin: getMargin(
                      left: 6,
                      top: 9,
                      bottom: 9,
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
                      left: 4,
                      top: 2,
                      bottom: 2,
                    ),
                    child: Text(
                      "lbl_3_min_read".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular12WhiteA70099,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgBookmark,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    margin: getMargin(
                      left: 118,
                    ),
                    onTap: () {
                      onTapImgBookmark!();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUnsplashcrczlse7hq,
          height: getSize(
            60,
          ),
          width: getSize(
            60,
          ),
          margin: getMargin(
            top: 72,
            bottom: 15,
          ),
        ),
      ],
    );
  }
}
