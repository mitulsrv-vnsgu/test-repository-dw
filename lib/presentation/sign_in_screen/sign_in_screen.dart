import 'controller/sign_in_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:auto_identification_percentage/domain/googleauth/google_auth_helper.dart';
import 'package:auto_identification_percentage/domain/facebookauth/facebook_auth_helper.dart';

class SignInScreen extends GetWidget<SignInController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black90001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 42, right: 16, bottom: 42),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage1,
                          height: getVerticalSize(43),
                          width: getHorizontalSize(178)),
                      Spacer(),
                      Text("lbl_welcome_back".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtCharterRoman46),
                      GestureDetector(
                          onTap: () {
                            onTapRowgoogletwentyone();
                          },
                          child: Container(
                              margin: getMargin(top: 44, right: 2),
                              padding: getPadding(
                                  left: 10, top: 11, right: 10, bottom: 11),
                              decoration: AppDecoration.outlineWhiteA700
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgGoogle21,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 1, bottom: 2)),
                                Padding(
                                    padding:
                                        getPadding(left: 77, top: 2, right: 95),
                                    child: Text("msg_sign_in_with_google".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanRegular16))
                              ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowfacebookthirtyone();
                          },
                          child: Container(
                              margin: getMargin(top: 12, right: 2),
                              padding: getPadding(
                                  left: 10, top: 11, right: 10, bottom: 11),
                              decoration: AppDecoration.outlineWhiteA700
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgFacebook31,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 2, bottom: 1)),
                                Padding(
                                    padding:
                                        getPadding(left: 67, top: 2, right: 86),
                                    child: Text("msg_sign_in_with_facebook".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanRegular16))
                              ]))),
                      Container(
                          margin: getMargin(top: 12, right: 2),
                          padding: getPadding(
                              left: 10, top: 11, right: 10, bottom: 11),
                          decoration: AppDecoration.outlineWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEmail11,
                                height: getSize(18),
                                width: getSize(18),
                                margin: getMargin(top: 2, bottom: 1)),
                            Padding(
                                padding:
                                    getPadding(left: 82, top: 2, right: 100),
                                child: Text("msg_sign_in_with_email".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanRegular16))
                          ])),
                      Container(
                          margin: getMargin(top: 12, right: 2),
                          padding: getPadding(
                              left: 10, top: 11, right: 10, bottom: 11),
                          decoration: AppDecoration.outlineWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgApple21,
                                height: getSize(18),
                                width: getSize(18),
                                margin: getMargin(top: 2, bottom: 1)),
                            Padding(
                                padding:
                                    getPadding(left: 81, top: 2, right: 100),
                                child: Text("msg_sign_in_with_apple".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanRegular16))
                          ])),
                      GestureDetector(
                          onTap: () {
                            onTapTxtAlreadyhavean3();
                          },
                          child: Padding(
                              padding: getPadding(top: 25, bottom: 169),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_already_have_an2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700B2,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_sign_up".tr,
                                        style: TextStyle(
                                            color: ColorConstant.green800,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))));
  }

  onTapRowgoogletwentyone() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapRowfacebookthirtyone() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtAlreadyhavean3() {
    Get.toNamed(AppRoutes.joinMediumScreen);
  }
}
