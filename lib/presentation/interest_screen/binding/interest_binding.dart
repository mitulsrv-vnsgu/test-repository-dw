import '../controller/interest_controller.dart';
import 'package:get/get.dart';

class InterestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InterestController());
  }
}
