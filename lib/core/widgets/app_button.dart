import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:flutter/material.dart';

class AppButtonItem extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final Widget widget;

  final BorderRadiusGeometry? borderRadius;

  const AppButtonItem({
    super.key,

    this.width,
    this.height,
    this.color,
    this.borderRadius,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 180,
      height: height ?? 50,
      decoration: BoxDecoration(
        color: color ?? HexColor(hexColor: '464061'),
        borderRadius: borderRadius ?? BorderRadius.circular(25),
      ),
      child: widget,
    );
  }
}
