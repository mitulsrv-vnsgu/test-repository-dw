import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/search_history_screen/models/search_history_model.dart';
import 'package:flutter/material.dart';

class SearchHistoryController extends GetxController {
  TextEditingController group113Controller = TextEditingController();

  TextEditingController groupFortySevenController = TextEditingController();

  Rx<SearchHistoryModel> searchHistoryModelObj = SearchHistoryModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group113Controller.dispose();
    groupFortySevenController.dispose();
  }
}
