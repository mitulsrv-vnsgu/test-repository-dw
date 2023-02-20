import '../models/chipviewframethree_item_model.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewframethreeItemWidget extends StatelessWidget {
  ChipviewframethreeItemWidget(this.chipviewframethreeItemModelObj);

  ChipviewframethreeItemModel chipviewframethreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewframethreeItemModelObj.frameThreeTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: ColorConstant.whiteA70099,
            fontSize: getFontSize(
              14,
            ),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: chipviewframethreeItemModelObj.isSelected.value,
        selectedColor: ColorConstant.whiteA70033,
        shape: chipviewframethreeItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.whiteA7007f,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    18,
                  ),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.whiteA7007f,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    18,
                  ),
                ),
              ),
        onSelected: (value) {
          chipviewframethreeItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
