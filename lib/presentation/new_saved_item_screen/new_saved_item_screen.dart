import 'controller/new_saved_item_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/explore_page/explore_page.dart';
import 'package:auto_identification_percentage/presentation/home_page/home_page.dart';
import 'package:auto_identification_percentage/presentation/saved_recently_viewed_page/saved_recently_viewed_page.dart';
import 'package:auto_identification_percentage/widgets/custom_bottom_bar.dart';
import 'package:auto_identification_percentage/widgets/custom_button.dart';
import 'package:auto_identification_percentage/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class NewSavedItemScreen extends GetWidget<NewSavedItemController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black90002,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 37,
            bottom: 37,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 15,
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
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_saved".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular14WhiteA700991,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 1,
                        ),
                        child: Text(
                          "lbl_highlighted".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular14WhiteA700991,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 1,
                        ),
                        child: Text(
                          "lbl_recently_viewed".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular14WhiteA700991,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getVerticalSize(
                    1,
                  ),
                  width: getHorizontalSize(
                    37,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 6,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
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
                  color: ColorConstant.gray10065,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 16,
                  top: 25,
                  right: 16,
                ),
                decoration: AppDecoration.fillGreen800.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 30,
                        top: 28,
                        bottom: 28,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              151,
                            ),
                            child: Text(
                              "msg_create_a_list_to".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanMedium14WhiteA700,
                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              89,
                            ),
                            text: "lbl_start_a_list".tr,
                            margin: getMargin(
                              top: 13,
                            ),
                            variant: ButtonVariant.FillBlack900dd,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        127,
                      ),
                      width: getHorizontalSize(
                        120,
                      ),
                      margin: getMargin(
                        top: 10,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder3,
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  109,
                                ),
                                width: getHorizontalSize(
                                  120,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          109,
                                        ),
                                        width: getHorizontalSize(
                                          120,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA70063,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              60,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 40,
                                      width: 40,
                                      margin: getMargin(
                                        right: 35,
                                        bottom: 24,
                                      ),
                                      shape: IconButtonShape.CircleBorder20,
                                      padding: IconButtonPadding.PaddingAll10,
                                      alignment: Alignment.bottomRight,
                                      child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgBookmarkGreen80040x40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgClose,
                            height: getSize(
                              20,
                            ),
                            width: getSize(
                              20,
                            ),
                            alignment: Alignment.topRight,
                            margin: getMargin(
                              right: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 16,
                  top: 20,
                  right: 16,
                  bottom: 5,
                ),
                padding: getPadding(
                  all: 1,
                ),
                decoration: AppDecoration.outlineGray90007.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 29,
                        top: 29,
                      ),
                      child: Text(
                        "lbl_reading_list".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanMedium16,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 29,
                        top: 2,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "lbl_37_stories".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular12WhiteA70087,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgLock,
                            height: getSize(
                              12,
                            ),
                            width: getSize(
                              12,
                            ),
                            margin: getMargin(
                              left: 8,
                              top: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 29,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashpbupmrgarqc,
                            height: getVerticalSize(
                              97,
                            ),
                            width: getHorizontalSize(
                              122,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashvgpzjpl9t5w,
                            height: getVerticalSize(
                              97,
                            ),
                            width: getHorizontalSize(
                              121,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashzsm5xgjjddy,
                            height: getVerticalSize(
                              97,
                            ),
                            width: getHorizontalSize(
                              90,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Mail:
        return AppRoutes.homePage;
      case BottomBarEnum.Search:
        return AppRoutes.explorePage;
      case BottomBarEnum.Bookmark:
        return AppRoutes.savedRecentlyViewedPage;
      case BottomBarEnum.Unsplashj5almo1e8ru:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.explorePage:
        return ExplorePage();
      case AppRoutes.savedRecentlyViewedPage:
        return SavedRecentlyViewedPage();
      default:
        return DefaultWidget();
    }
  }
}
