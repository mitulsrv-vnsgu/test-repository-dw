import '../controller/new_saved_item_controller.dart';
import 'package:get/get.dart';

class NewSavedItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewSavedItemController());
  }
}
