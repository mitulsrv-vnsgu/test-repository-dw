import '../explore_page/widgets/explore_item_widget.dart';
import 'controller/explore_controller.dart';
import 'models/explore_item_model.dart';
import 'models/explore_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/custom_floating_button.dart';
import 'package:auto_identification_percentage/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:auto_identification_percentage/presentation/save_to_bottomsheet/save_to_bottomsheet.dart';
import 'package:auto_identification_percentage/presentation/save_to_bottomsheet/controller/save_to_controller.dart';

// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {
  ExploreController controller = Get.put(ExploreController(ExploreModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.black90002,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillBlack90002,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(top: 41),
                          padding: getPadding(left: 16, right: 16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_explore".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanExtraBold22),
                                CustomSearchView(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.groupFortySevenController,
                                    hintText: "lbl_search_medium".tr,
                                    margin: getMargin(top: 26),
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 5,
                                            top: 7,
                                            right: 5,
                                            bottom: 7),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSearch)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(32))),
                                Padding(
                                    padding: getPadding(top: 28),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgDownload,
                                          height: getSize(18),
                                          width: getSize(18),
                                          margin: getMargin(bottom: 1)),
                                      Padding(
                                          padding: getPadding(left: 5, top: 4),
                                          child: Text("msg_recommended_for2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanSemiBold12))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 18),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return Padding(
                                              padding: getPadding(
                                                  top: 11.0, bottom: 11.0),
                                              child: Divider(
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant
                                                      .whiteA70065));
                                        },
                                        itemCount: controller.exploreModelObj
                                            .value.exploreItemList.length,
                                        itemBuilder: (context, index) {
                                          ExploreItemModel model = controller
                                              .exploreModelObj
                                              .value
                                              .exploreItemList[index];
                                          return ExploreItemWidget(model,
                                              onTapImgBookmark:
                                                  onTapImgBookmark);
                                        }))),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Divider(
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.whiteA70065))
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

  onTapImgBookmark() {
    Get.bottomSheet(SaveToBottomsheet(Get.put(SaveToController())),
        isScrollControlled: true);
  }

  onTapBtnFloatingactionbutton() {
    Get.toNamed(AppRoutes.createPostScreen);
  }
}
