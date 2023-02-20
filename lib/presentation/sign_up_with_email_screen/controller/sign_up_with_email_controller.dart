import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/sign_up_with_email_screen/models/sign_up_with_email_model.dart';
import 'package:flutter/material.dart';

class SignUpWithEmailController extends GetxController {
  TextEditingController group128Controller = TextEditingController();

  TextEditingController group126Controller = TextEditingController();

  TextEditingController group127Controller = TextEditingController();

  TextEditingController group129Controller = TextEditingController();

  Rx<SignUpWithEmailModel> signUpWithEmailModelObj = SignUpWithEmailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group128Controller.dispose();
    group126Controller.dispose();
    group127Controller.dispose();
    group129Controller.dispose();
  }
}
