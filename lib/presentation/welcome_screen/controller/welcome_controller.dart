import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/welcome_screen/models/welcome_model.dart';

class WelcomeController extends GetxController {
  Rx<WelcomeModel> welcomeModelObj = WelcomeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
