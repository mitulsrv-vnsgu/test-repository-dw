import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/search_result_item_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_image.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_searchview.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_subtitle.dart';
import 'package:auto_identification_percentage/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(69),
                leadingWidth: 32,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowdown,
                    margin: getMargin(left: 8, top: 16, bottom: 16),
                    onTap: onTapArrowleft4),
                centerTitle: true,
                title: AppbarSearchview(
                    hintText: "lbl_android".tr,
                    controller: controller.groupFortySevenController),
                actions: [
                  AppbarSubtitle(
                      text: "lbl_cancel".tr,
                      margin:
                          getMargin(left: 9, top: 19, right: 18, bottom: 19))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return Padding(
                                padding: getPadding(top: 11.0, bottom: 11.0),
                                child: Divider(
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.whiteA70065));
                          },
                          itemCount: controller.searchResultModelObj.value
                              .searchResultItemList.length,
                          itemBuilder: (context, index) {
                            SearchResultItemModel model = controller
                                .searchResultModelObj
                                .value
                                .searchResultItemList[index];
                            return SearchResultItemWidget(model);
                          })),
                      Padding(
                          padding: getPadding(top: 10, bottom: 4),
                          child: Divider(
                              thickness: getVerticalSize(1),
                              color: ColorConstant.whiteA70065))
                    ]))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
