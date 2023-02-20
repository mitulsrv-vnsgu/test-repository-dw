import '../welcome_screen/widgets/welcome_screen_item_widget.dart';
import 'controller/welcome_controller.dart';
import 'models/welcome_screen_item_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray90001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 10, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_welcome_to_medium".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanMedium16),
                      Spacer(),
                      Text("lbl_figma_testing".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtCharterRoman46),
                      Container(
                          width: getHorizontalSize(239),
                          margin: getMargin(top: 76),
                          child: Text("msg_let_s_find_people".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style:
                                  AppStyle.txtRobotoRomanRegular14WhiteA70099)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Divider(
                              thickness: getVerticalSize(1),
                              color: ColorConstant.whiteA70065)),
                      Padding(
                          padding: getPadding(top: 69, bottom: 117),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(8));
                              },
                              itemCount: controller.welcomeModelObj.value
                                  .welcomeScreenItemList.length,
                              itemBuilder: (context, index) {
                                WelcomeScreenItemModel model = controller
                                    .welcomeModelObj
                                    .value
                                    .welcomeScreenItemList[index];
                                return WelcomeScreenItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 17, right: 16, bottom: 32),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: getVerticalSize(46),
                      width: getHorizontalSize(342),
                      text: "lbl_continue".tr,
                      variant: ButtonVariant.FillIndigoA700,
                      shape: ButtonShape.CircleBorder23,
                      padding: ButtonPadding.PaddingAll14,
                      fontStyle: ButtonFontStyle.RobotoRegular14WhiteA700,
                      onTap: onTapContinue)
                ]))));
  }

  onTapContinue() {
    Get.toNamed(AppRoutes.interestScreen);
  }
}
