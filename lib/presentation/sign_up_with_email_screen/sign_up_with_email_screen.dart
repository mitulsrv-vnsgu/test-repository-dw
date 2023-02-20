import 'controller/sign_up_with_email_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/core/utils/validation_functions.dart';
import 'package:auto_identification_percentage/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpWithEmailScreen extends GetWidget<SignUpWithEmailController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.black90001,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 8, top: 9, right: 8, bottom: 9),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                              height: getSize(24),
                              width: getSize(24),
                              alignment: Alignment.centerLeft,
                              onTap: () {
                                onTapImgArrowleft();
                              }),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage1,
                              height: getVerticalSize(43),
                              width: getHorizontalSize(178),
                              margin: getMargin(top: 9),
                              onTap: () {
                                onTapImgImageOne();
                              }),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 28, top: 24),
                                  child: Text("msg_enter_the_details".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtCharterRoman36))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group128Controller,
                              hintText: "lbl_your_name".tr,
                              margin: getMargin(top: 28),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group126Controller,
                              hintText: "lbl_your_email".tr,
                              margin: getMargin(top: 48),
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group127Controller,
                              hintText: "lbl_your_password".tr,
                              margin: getMargin(top: 48),
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group129Controller,
                              hintText: "msg_confirm_password".tr,
                              margin: getMargin(top: 48),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          Spacer(),
                          Container(
                              width: getHorizontalSize(310),
                              margin: getMargin(bottom: 49),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_by_signing_up_you2".tr,
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
                                        text: "msg_terms_of_service".tr,
                                        style: TextStyle(
                                            color: ColorConstant.green800,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "msg_and_acknowledge".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700B2,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_privacy_policy".tr,
                                        style: TextStyle(
                                            color: ColorConstant.green800,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_applies_to_you".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700B2,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400))
                                  ]),
                                  textAlign: TextAlign.center))
                        ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgImageOne() {
    Get.toNamed(AppRoutes.welcomeScreen);
  }
}
