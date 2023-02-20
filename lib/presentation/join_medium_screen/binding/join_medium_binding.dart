import '../controller/join_medium_controller.dart';
import 'package:get/get.dart';

class JoinMediumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JoinMediumController());
  }
}
