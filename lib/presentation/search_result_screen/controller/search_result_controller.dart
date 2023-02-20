import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/search_result_screen/models/search_result_model.dart';
import 'package:flutter/material.dart';

class SearchResultController extends GetxController {
  TextEditingController groupFortySevenController = TextEditingController();

  Rx<SearchResultModel> searchResultModelObj = SearchResultModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFortySevenController.dispose();
  }
}
