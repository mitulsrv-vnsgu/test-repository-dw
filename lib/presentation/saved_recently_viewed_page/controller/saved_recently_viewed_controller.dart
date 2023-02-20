import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/saved_recently_viewed_page/models/saved_recently_viewed_model.dart';
import 'package:flutter/material.dart';

class SavedRecentlyViewedController extends GetxController {
  SavedRecentlyViewedController(this.savedRecentlyViewedModelObj);

  TextEditingController groupThirteenController = TextEditingController();

  Rx<SavedRecentlyViewedModel> savedRecentlyViewedModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThirteenController.dispose();
  }
}
