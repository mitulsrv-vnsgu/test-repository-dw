import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color whiteA7005e = fromHex('#5effffff');

  static Color whiteA700B2 = fromHex('#b2ffffff');

  static Color black9007b = fromHex('#7b000000');

  static Color green800 = fromHex('#278916');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black90001 = fromHex('#000000');

  static Color black900Dd = fromHex('#dd000000');

  static Color black900 = fromHex('#0e100e');

  static Color indigoA70001 = fromHex('#273be9');

  static Color gray40099 = fromHex('#99c4b3b3');

  static Color black90003 = fromHex('#000000');

  static Color redA700 = fromHex('#e31414');

  static Color black90002 = fromHex('#0e0f0e');

  static Color gray90002 = fromHex('#151715');

  static Color gray90003 = fromHex('#232323');

  static Color gray90004 = fromHex('#1b1b1b');

  static Color gray90005 = fromHex('#191919');

  static Color blueGray400 = fromHex('#888888');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray800 = fromHex('#474747');

  static Color gray900 = fromHex('#1e1e1e');

  static Color gray90001 = fromHex('#151714');

  static Color whiteA700A9 = fromHex('#a9ffffff');

  static Color gray90006 = fromHex('#1a1a1a');

  static Color gray90007 = fromHex('#2a2a2a');

  static Color whiteA70065 = fromHex('#65ffffff');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color whiteA70063 = fromHex('#63ffffff');

  static Color indigoA700 = fromHex('#211dea');

  static Color gray10065 = fromHex('#65f3f2f2');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
