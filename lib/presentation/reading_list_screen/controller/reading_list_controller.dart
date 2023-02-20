import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/reading_list_screen/models/reading_list_model.dart';

class ReadingListController extends GetxController {
  Rx<ReadingListModel> readingListModelObj = ReadingListModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
