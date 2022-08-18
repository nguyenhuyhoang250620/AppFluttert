import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray51 = fromHex('#f8fafd');

  static Color gray700 = fromHex('#5d636f');

  static Color indigo9003f = fromHex('#3f252382');

  static Color indigo50 = fromHex('#e7ecf3');

  static Color gray900 = fromHex('#1d222d');

  static Color gray9007a = fromHex('#7a1d222d');

  static Color black9003f = fromHex('#3f000000');

  static Color gray200 = fromHex('#f0f0f0');

  static Color gray50 = fromHex('#fafafa');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray200 = fromHex('#a6afc0');

  static Color lightBlueA700 = fromHex('#007eff');

  static Color black90019 = fromHex('#19000000');

  static Color purpleA100 = fromHex('#f19bff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray90090 = fromHex('#901d222d');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
