import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton(
      {this.shape,
      this.variant,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.child});

  FloatingButtonShape? shape;

  FloatingButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildFabWidget(),
          )
        : _buildFabWidget();
  }

  _buildFabWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FloatingActionButton(
        backgroundColor: _setColor(),
        onPressed: onTap,
        child: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          decoration: _buildDecoration(),
          child: child,
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setColor() {
    switch (variant) {
      case FloatingButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.green800;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case FloatingButtonShape.CircleBorder33:
        return BorderRadius.circular(
          getHorizontalSize(
            33.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
    }
  }
}

enum FloatingButtonShape {
  CircleBorder29,
  CircleBorder33,
}

enum FloatingButtonVariant {
  FillGreen800,
  FillWhiteA700,
}
