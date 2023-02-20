import '../saved_recently_viewed_page/widgets/listunsplashcrczlse7hq_item_widget.dart';
import 'controller/saved_recently_viewed_controller.dart';
import 'models/listunsplashcrczlse7hq_item_model.dart';
import 'models/saved_recently_viewed_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/custom_button.dart';
import 'package:auto_identification_percentage/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SavedRecentlyViewedPage extends StatelessWidget {
  SavedRecentlyViewedController controller =
      Get.put(SavedRecentlyViewedController(SavedRecentlyViewedModel().obs));

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 15,
                          top: 37,
                          right: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 3,
                              ),
                              child: Text(
                                "lbl_your_lists".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanExtraBold22,
                              ),
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                32,
                              ),
                              width: getHorizontalSize(
                                78,
                              ),
                              text: "lbl_new_list".tr,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 16,
                            top: 29,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 8,
                                ),
                                child: Text(
                                  "lbl_saved".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanRegular14,
                                ),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.groupThirteenController,
                                hintText: "lbl_recently_viewed".tr,
                                margin: getMargin(
                                  left: 19,
                                  top: 1,
                                ),
                                fontStyle: TextFormFieldFontStyle
                                    .RobotoRomanRegular14WhiteA70099,
                                textInputAction: TextInputAction.done,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 19,
                                  top: 1,
                                  bottom: 7,
                                ),
                                child: Text(
                                  "lbl_highlights".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanRegular14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Divider(
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.whiteA70065,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 30,
                          right: 16,
                        ),
                        child: Obx(
                          () => ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return Padding(
                                padding: getPadding(
                                  top: 11.0,
                                  bottom: 11.0,
                                ),
                                child: Divider(
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.whiteA70065,
                                ),
                              );
                            },
                            itemCount: controller.savedRecentlyViewedModelObj
                                .value.listunsplashcrczlse7hqItemList.length,
                            itemBuilder: (context, index) {
                              Listunsplashcrczlse7hqItemModel model = controller
                                  .savedRecentlyViewedModelObj
                                  .value
                                  .listunsplashcrczlse7hqItemList[index];
                              return Listunsplashcrczlse7hqItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 10,
                        ),
                        child: Divider(
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.whiteA70065,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
