import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final double? endIndent;
  final double? indent;
  final Color? color;
  const AppDivider({super.key, this.endIndent, this.indent, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(
      endIndent: endIndent ?? 21,
      indent: indent ?? 21,
      color: color ?? HexColor(hexColor: '7472727A'),
    );
  }
}
