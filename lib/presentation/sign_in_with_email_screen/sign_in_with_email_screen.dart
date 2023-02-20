import 'controller/sign_in_with_email_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/core/utils/validation_functions.dart';
import 'package:auto_identification_percentage/widgets/custom_button.dart';
import 'package:auto_identification_percentage/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInWithEmailScreen extends GetWidget<SignInWithEmailController> {
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
                              margin: getMargin(top: 9)),
                          Padding(
                              padding: getPadding(top: 28),
                              child: Text("msg_sign_in_with_email2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtCharterRoman36WhiteA700)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group127Controller,
                              hintText: "lbl_your_email".tr,
                              margin: getMargin(top: 31),
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
                              controller: controller.group128Controller,
                              hintText: "lbl_your_password2".tr,
                              margin: getMargin(top: 50),
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
                          CustomButton(
                              height: getVerticalSize(46),
                              width: getHorizontalSize(240),
                              text: "lbl_sign_in2".tr,
                              margin: getMargin(top: 49, bottom: 5),
                              variant: ButtonVariant.FillIndigoA70001,
                              shape: ButtonShape.CircleBorder23,
                              padding: ButtonPadding.PaddingAll11,
                              fontStyle:
                                  ButtonFontStyle.RobotoRegular14WhiteA700,
                              onTap: onTapSignin)
                        ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapSignin() {
// TODO: implement Actions
  }
}
