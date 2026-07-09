import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);

  double get screenWidth => screenSize.width;

  double get screenHeight => screenSize.height;

  bool get isMobile => screenWidth < 600;

  bool get isTablet => screenWidth >= 600;

  bool get isLandscape => screenWidth > screenHeight;

  bool get isPortrait => screenHeight > screenWidth;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;
}
