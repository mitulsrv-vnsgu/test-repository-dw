import '../controller/search_history_controller.dart';
import 'package:get/get.dart';

class SearchHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchHistoryController());
  }
}
