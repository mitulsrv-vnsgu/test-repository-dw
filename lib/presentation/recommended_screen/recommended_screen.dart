import '../recommended_screen/widgets/recommended_item_widget.dart';
import 'controller/recommended_controller.dart';
import 'models/recommended_item_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_image.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_subtitle.dart';
import 'package:auto_identification_percentage/widgets/app_bar/custom_app_bar.dart';
import 'package:auto_identification_percentage/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class RecommendedScreen extends GetWidget<RecommendedController> {
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
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_welcome_to_medium".tr)),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 35),
                          child: Text("msg_recommended_for".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanBold20)),
                      Container(
                          width: getHorizontalSize(212),
                          margin: getMargin(top: 7),
                          child: Text("msg_here_are_some_top".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle
                                  .txtRobotoRomanRegular14WhiteA700991)),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Divider(
                              thickness: getVerticalSize(1),
                              color: ColorConstant.whiteA70065)),
                      Container(
                          height: getVerticalSize(573),
                          width: double.maxFinite,
                          margin: getMargin(top: 18),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, right: 16, bottom: 34),
                                        child: Obx(() => ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(13));
                                            },
                                            itemCount: controller
                                                .recommendedModelObj
                                                .value
                                                .recommendedItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              RecommendedItemModel model =
                                                  controller
                                                          .recommendedModelObj
                                                          .value
                                                          .recommendedItemList[
                                                      index];
                                              return RecommendedItemWidget(
                                                  model);
                                            })))),
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
                                                        text: "lbl_finish".tr,
                                                        margin:
                                                            getMargin(top: 1),
                                                        shape: ButtonShape
                                                            .CircleBorder23,
                                                        padding: ButtonPadding
                                                            .PaddingAll14,
                                                        fontStyle: ButtonFontStyle
                                                            .RobotoRegular14WhiteA700,
                                                        onTap: onTapFinish)
                                                  ]))
                                        ]))
                              ]))
                    ]))));
  }

  onTapFinish() {
// TODO: implement Actions
  }
  onTapArrowleft1() {
    Get.back();
  }
}
