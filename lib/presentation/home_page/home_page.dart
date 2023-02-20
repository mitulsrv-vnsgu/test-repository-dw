import '../home_page/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_image.dart';
import 'package:auto_identification_percentage/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:auto_identification_percentage/presentation/save_to_bottomsheet/save_to_bottomsheet.dart';
import 'package:auto_identification_percentage/presentation/save_to_bottomsheet/controller/save_to_controller.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black90002,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                title: Padding(
                    padding: getPadding(left: 16),
                    child: Text("lbl_home".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanExtraBold22)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 16, right: 16, bottom: 1))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 27, right: 16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlus,
                                    height: getVerticalSize(32),
                                    width: getHorizontalSize(48)),
                                Container(
                                    width: getHorizontalSize(66),
                                    margin: getMargin(left: 8),
                                    padding: getPadding(
                                        left: 14, top: 7, right: 14, bottom: 7),
                                    decoration: AppDecoration.txtFillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: Text("lbl_for_you".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanRegular12Black900dd)),
                                Container(
                                    width: getHorizontalSize(77),
                                    margin: getMargin(left: 8),
                                    padding: getPadding(
                                        left: 14, top: 7, right: 14, bottom: 7),
                                    decoration: AppDecoration.txtFillGray90004
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: Text("lbl_following".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanRegular12WhiteA70099)),
                                Container(
                                    width: getHorizontalSize(87),
                                    margin: getMargin(left: 8),
                                    padding: getPadding(
                                        left: 14, top: 7, right: 14, bottom: 7),
                                    decoration: AppDecoration.txtFillGray90004
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: Text("lbl_technology".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanRegular12WhiteA70099))
                              ]),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Padding(
                                            padding: getPadding(
                                                top: 11.0, bottom: 11.0),
                                            child: Divider(
                                                thickness: getVerticalSize(1),
                                                color:
                                                    ColorConstant.whiteA70065));
                                      },
                                      itemCount: controller.homeModelObj.value
                                          .homeItemList.length,
                                      itemBuilder: (context, index) {
                                        HomeItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .homeItemList[index];
                                        return HomeItemWidget(model,
                                            onTapImgBookmark: onTapImgBookmark);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 10),
                                  child: Divider(
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.whiteA70065))
                            ]))))));
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
}
