import '../controller/welcome_controller.dart';
import '../models/welcome_screen_item_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomeScreenItemWidget extends StatelessWidget {
  WelcomeScreenItemWidget(this.welcomeScreenItemModelObj);

  WelcomeScreenItemModel welcomeScreenItemModelObj;

  var controller = Get.find<WelcomeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplash5aguycwpjw,
          height: getSize(
            68,
          ),
          width: getSize(
            68,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              34,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUnsplashcvwxhgqgo,
          height: getSize(
            68,
          ),
          width: getSize(
            68,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              34,
            ),
          ),
          margin: getMargin(
            left: 8,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUnsplash4kwwliz2q,
          height: getSize(
            68,
          ),
          width: getSize(
            68,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              34,
            ),
          ),
          margin: getMargin(
            left: 8,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUnsplashu3wmdykgsry,
          height: getSize(
            68,
          ),
          width: getSize(
            68,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              34,
            ),
          ),
          margin: getMargin(
            left: 8,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUnsplashroh656uzegy,
          height: getSize(
            68,
          ),
          width: getSize(
            68,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              34,
            ),
          ),
          margin: getMargin(
            left: 8,
          ),
        ),
      ],
    );
  }
}
