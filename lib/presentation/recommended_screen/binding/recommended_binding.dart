import '../controller/recommended_controller.dart';
import 'package:get/get.dart';

class RecommendedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecommendedController());
  }
}
