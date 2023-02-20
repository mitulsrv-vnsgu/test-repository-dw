import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/sign_in_with_email_screen/models/sign_in_with_email_model.dart';
import 'package:flutter/material.dart';

class SignInWithEmailController extends GetxController {
  TextEditingController group127Controller = TextEditingController();

  TextEditingController group128Controller = TextEditingController();

  Rx<SignInWithEmailModel> signInWithEmailModelObj = SignInWithEmailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group127Controller.dispose();
    group128Controller.dispose();
  }
}
