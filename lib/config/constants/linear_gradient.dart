import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:flutter/material.dart';

LinearGradient globalBackgroundGradient({Color? color}) => LinearGradient(
  colors: [color ?? Color(0xFFD3E3FF), Color(0xFFFFFFFF)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
