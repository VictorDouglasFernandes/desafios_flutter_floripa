import 'package:desafios_flutter_floripa/src/commons/colors/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontsManager {
  static TextStyle ptSans({
    Color? color = ColorsManager.darkGrey,
    double? fontSize,
    FontWeight? fontWeight,
  }) =>
      GoogleFonts.ptSans(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      );
}
