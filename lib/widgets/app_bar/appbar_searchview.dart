import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({this.hintText, this.controller, this.margin});

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        focusNode: FocusNode(),
        controller: controller,
        hintText: hintText,
        prefix: Container(
          margin: getMargin(
            left: 5,
            top: 7,
            right: 5,
            bottom: 7,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            32,
          ),
        ),
      ),
    );
  }
}
