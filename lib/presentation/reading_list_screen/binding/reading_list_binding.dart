import '../controller/reading_list_controller.dart';
import 'package:get/get.dart';

class ReadingListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReadingListController());
  }
}
