import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/save_to_bottomsheet/models/save_to_model.dart';
import 'package:flutter/material.dart';

class SaveToController extends GetxController {
  TextEditingController group104Controller = TextEditingController();

  TextEditingController group103Controller = TextEditingController();

  TextEditingController group102Controller = TextEditingController();

  TextEditingController group101Controller = TextEditingController();

  Rx<SaveToModel> saveToModelObj = SaveToModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group104Controller.dispose();
    group103Controller.dispose();
    group102Controller.dispose();
    group101Controller.dispose();
  }
}
