import '../controller/recommended_controller.dart';
import '../models/recommended_item_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecommendedItemWidget extends StatelessWidget {
  RecommendedItemWidget(this.recommendedItemModelObj);

  RecommendedItemModel recommendedItemModelObj;

  var controller = Get.find<RecommendedController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashcgkynn3uuvo,
            height: getSize(
              48,
            ),
            width: getSize(
              48,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                24,
              ),
            ),
            margin: getMargin(
              bottom: 30,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_abdullah_ayasun".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanRegular14WhiteA700a9,
                ),
                Container(
                  width: getHorizontalSize(
                    116,
                  ),
                  margin: getMargin(
                    top: 2,
                  ),
                  child: Text(
                    "msg_new_york_based".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanRegular12,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomButton(
            height: getVerticalSize(
              28,
            ),
            width: getHorizontalSize(
              74,
            ),
            text: "lbl_follow".tr,
            margin: getMargin(
              bottom: 50,
            ),
          ),
        ],
      ),
    );
  }
}
