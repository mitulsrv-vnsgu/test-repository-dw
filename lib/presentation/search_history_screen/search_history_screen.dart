import 'controller/search_history_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_image.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_searchview.dart';
import 'package:auto_identification_percentage/widgets/app_bar/appbar_subtitle.dart';
import 'package:auto_identification_percentage/widgets/app_bar/custom_app_bar.dart';
import 'package:auto_identification_percentage/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchHistoryScreen extends GetWidget<SearchHistoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(69),
                leadingWidth: 32,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowdown,
                    margin: getMargin(left: 8, top: 16, bottom: 16),
                    onTap: onTapArrowleft2),
                centerTitle: true,
                title: AppbarSearchview(
                    hintText: "lbl_search_medium".tr,
                    controller: controller.groupFortySevenController),
                actions: [
                  AppbarSubtitle(
                      text: "lbl_cancel".tr,
                      margin:
                          getMargin(left: 9, top: 19, right: 18, bottom: 19))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 17, top: 12, right: 17, bottom: 12),
                          decoration: AppDecoration.fillGray90006,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_search_history".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanMedium14)),
                                Padding(
                                    padding: getPadding(right: 1, bottom: 1),
                                    child: Text("lbl_clear".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanRegular16))
                              ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group113Controller,
                          hintText: "lbl_android".tr,
                          margin: getMargin(top: 9, bottom: 5),
                          variant: TextFormFieldVariant.UnderLineWhiteA7005e,
                          fontStyle: TextFormFieldFontStyle
                              .RobotoRomanRegular16Green800,
                          textInputAction: TextInputAction.done)
                    ]))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
