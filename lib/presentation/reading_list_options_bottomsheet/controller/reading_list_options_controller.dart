import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/reading_list_options_bottomsheet/models/reading_list_options_model.dart';

class ReadingListOptionsController extends GetxController {
  Rx<ReadingListOptionsModel> readingListOptionsModelObj =
      ReadingListOptionsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
