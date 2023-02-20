import 'controller/reading_list_options_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/custom_floating_button.dart';
import 'package:auto_identification_percentage/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ReadingListOptionsBottomsheet extends StatelessWidget {
  ReadingListOptionsBottomsheet(this.controller);

  ReadingListOptionsController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: getPadding(
                      top: 30,
                      bottom: 30,
                    ),
                    decoration: AppDecoration.fillGray90004,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 22,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 66,
                                width: 66,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgUploadGreen800,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                ),
                                child: Text(
                                  "lbl_share".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtRobotoRomanRegular12WhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 21,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 66,
                                width: 66,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgPlusGreen800,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                ),
                                child: Text(
                                  "lbl_create_a_post".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtRobotoRomanRegular12WhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 21,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 66,
                                width: 66,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                ),
                                child: Text(
                                  "lbl_make_public".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtRobotoRomanRegular12WhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 73,
                            bottom: 22,
                          ),
                          child: Text(
                            "lbl_reoder_items".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular12WhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomFloatingButton(
              height: 66,
              width: 66,
              variant: FloatingButtonVariant.FillWhiteA700,
              shape: FloatingButtonShape.CircleBorder33,
              alignment: Alignment.bottomRight,
              child: CustomImageView(
                svgPath: ImageConstant.imgMenu,
                height: getVerticalSize(
                  33.0,
                ),
                width: getHorizontalSize(
                  33.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
