import 'controller/create_post_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:auto_identification_percentage/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:auto_identification_percentage/presentation/publish_post_bottomsheet/publish_post_bottomsheet.dart';
import 'package:auto_identification_percentage/presentation/publish_post_bottomsheet/controller/publish_post_controller.dart';

class CreatePostScreen extends GetWidget<CreatePostController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray90005,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                title: AppbarSubtitle3(
                    text: "lbl_close".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarSubtitle3(
                      text: "lbl_draft".tr,
                      margin: getMargin(left: 16, top: 11, right: 11)),
                  GestureDetector(
                      onTap: () {
                        onTapTxtNext();
                      },
                      child: Padding(
                          padding: getPadding(left: 20, top: 11, right: 27),
                          child: Text("lbl_next".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular14Green800)))
                ],
                styleType: Style.bgFillBlack90001),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup90,
                          height: getVerticalSize(40),
                          width: getHorizontalSize(375),
                          margin: getMargin(bottom: 335))
                    ]))));
  }

  onTapTxtNext() {
    Get.bottomSheet(
      PublishPostBottomsheet(
        Get.put(
          PublishPostController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
