import 'dart:math';

import 'package:flutter/widgets.dart';

class AppColors {
  static const Color pink = Color(0xFFF5487F);
  static const Color green = Color(0xFF58B368);
  static const Color darkPurple = Color(0xFF343090);
  static const Color cyan = Color(0xFF44C2FD);
  static const Color yellow = Color(0xFFFAC736);
  // static const Color white = Color(0xFFF1F0FD);
  static const Color lightPurple = Color(0xFFAFACF3);
  static const Color lightGrey = Color(0xFFF2F5FA);
  static Color black54 = Color(0xFF000000).withOpacity(0.54);

  static const blueGradient = LinearGradient(
    colors: <Color>[cyan, darkPurple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.7],
    transform: GradientRotation((-34 * pi) / 180),
  );

  static const blueGradientAppBar = LinearGradient(
    colors: <Color>[cyan, darkPurple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.7],
    transform: GradientRotation((55 * pi) / 180),
  );

  // static const gradientScrollBar = LinearGradient(
  //   colors: <Color>[white, lightPurple],
  //   begin: Alignment.topLeft,
  //   end: Alignment.bottomRight,
  //   stops: [0.0, 0.7],
  //   transform: GradientRotation((55 * pi) / 180),
  // );
}
