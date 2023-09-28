import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

final $styles = AppStyle();

class AppStyle {
  late final textStyles = _TextStyle();
  late final colors = _Colors();
  late final insets = _Insets();
  late final numbers = _Numbers();
}

@immutable
class _TextStyle {
  late final TextStyle labelBold = GoogleFonts.workSans(
    color: $styles.colors.textColor,
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );

  late final TextStyle labelBigBold = GoogleFonts.workSans(
    color: $styles.colors.black,
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle titleBold = GoogleFonts.workSans(
    color: $styles.colors.textColor,
    fontSize: 30,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );

  late final TextStyle descRegular = GoogleFonts.workSans(
    color: $styles.colors.textColor,
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

  late final TextStyle descBold = GoogleFonts.workSans(
    color: $styles.colors.black,
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );

  late final TextStyle descMedium = GoogleFonts.workSans(
    color: const Color(0xFF1F2732),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle bodyBigBold = GoogleFonts.workSans(
    color: $styles.colors.textColor,
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle bodyMedium = GoogleFonts.workSans(
    color: $styles.colors.textColor,
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle smallTextBold = GoogleFonts.workSans(
    color: $styles.colors.white,
    fontSize: 10,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );

  late final TextStyle largeTextMedium = GoogleFonts.workSans(
    color: $styles.colors.black,
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle verySmallMedium = GoogleFonts.workSans(
    color: const Color(0xFFBE3032),
    fontSize: 11.862,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle smallBold = GoogleFonts.workSans(
    color: $styles.colors.black,
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );
}

@immutable
class _Colors {
  late final Color primary = const Color(0xFFEFEFEF);
  late final Color white = const Color(0xFFFFFFFF);
  late final Color black = const Color(0xFF000000);
  late final Color red = const Color(0xFFCD2626);
  late final Color blue = const Color(0xFF394376);
  late final Color textColor = const Color(0xFF394376);
  late final Color grey = const Color(0xFF9C9C9C);
}

@immutable
class _Insets {
  late final double insets08 = 8.sp;
  late final double insets10 = 10.sp;
  late final double insets14 = 14.sp;
  late final double insets18 = 18.sp;
  late final double insets22 = 22.sp;
  late final double insets26 = 26.sp;
  late final double insets30 = 30.sp;
}

@immutable
class _Numbers {
  late final double num_08 = 8;
  late final double num_10 = 10;
  late final double num_14 = 14;
  late final double num_18 = 18;
  late final double num_22 = 22;
  late final double num_26 = 26;
  late final double num_30 = 30;
}
