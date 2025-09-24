import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);
  // MediaQueryData get paddingSize => MediaQuery.of(this);
  // AppBar get appBar => AppBar();

  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  // double get appBarHeight => appBar.preferredSize.height;
  // double get bodyHeight =>
  //     screenHeight - paddingSize.padding.top - appBarHeight;
  EdgeInsets get customPadding => EdgeInsets.only(
    left: screenWidth / 13,
    top: screenHeight / 50,
    right: screenWidth / 13,
    bottom: screenHeight / 20,
  );
}
