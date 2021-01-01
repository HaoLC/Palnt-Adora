import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseText {
  static BaseText _internal;

  BaseText._();

  factory BaseText() {
    if (_internal == null) {
      _internal = BaseText._();
    }
    return _internal;
  }

  double tinyLower = 9;
  double tiny = 10;
  double tinyUpper = 11;
  double smallLower = 12;
  double small = 13;
  double smallUpper = 14;
  double normalLower = 15;
  double normal = 16;
  double normalUpper = 17;
  double largeLower = 18;
  double large = 19;
  double largeUpper = 20;
  double captionLower = 23;
  double caption = 24;
  String fontFamily = GoogleFonts.vollkorn().fontFamily;

  //source
  TextStyle fontFamilyStyle() =>
      TextStyle(fontFamily: fontFamily, color: Colors.black, height: 1.2);

  ///  [9]*/
  TextStyle tinyLowerNormal() => fontFamilyStyle()
      .copyWith(fontSize: tinyLower, fontWeight: FontWeight.w400);

  ///  [9]*/
  TextStyle tinyLowerMedium() => fontFamilyStyle()
      .copyWith(fontSize: tinyLower, fontWeight: FontWeight.w500);

  ///  [9]*/
  TextStyle tinyLowerBold() => fontFamilyStyle()
      .copyWith(fontSize: tinyLower, fontWeight: FontWeight.w700);

  ///  [9]*/
  TextStyle tinyLowerHeavy() => fontFamilyStyle()
      .copyWith(fontSize: tinyLower, fontWeight: FontWeight.w800);

  ///  [9]*/
  TextStyle tinyLowerBlack() => fontFamilyStyle()
      .copyWith(fontSize: tinyLower, fontWeight: FontWeight.w900);

  ///  [10]*/
  TextStyle tinyNormal() =>
      fontFamilyStyle().copyWith(fontSize: tiny, fontWeight: FontWeight.w400);

  ///  [10]*/
  TextStyle tinyMedium() =>
      fontFamilyStyle().copyWith(fontSize: tiny, fontWeight: FontWeight.w500);

  ///  [10]*/
  TextStyle tinyBold() =>
      fontFamilyStyle().copyWith(fontSize: tiny, fontWeight: FontWeight.w700);

  ///  [10]*/
  TextStyle tinyHeavy() =>
      fontFamilyStyle().copyWith(fontSize: tiny, fontWeight: FontWeight.w800);

  ///  [10]*/
  TextStyle tinyBlack() =>
      fontFamilyStyle().copyWith(fontSize: tiny, fontWeight: FontWeight.w900);

  ///  [11]*/
  TextStyle tinyUpperNormal() => fontFamilyStyle()
      .copyWith(fontSize: tinyUpper, fontWeight: FontWeight.w400);

  ///  [11]*/
  TextStyle tinyUpperMedium() => fontFamilyStyle()
      .copyWith(fontSize: tinyUpper, fontWeight: FontWeight.w500);

  ///  [11]*/
  TextStyle tinyUpperBold() => fontFamilyStyle()
      .copyWith(fontSize: tinyUpper, fontWeight: FontWeight.w700);

  ///  [11]*/
  TextStyle tinyUpperBlack() => fontFamilyStyle()
      .copyWith(fontSize: tinyUpper, fontWeight: FontWeight.w900);

  ///  [12]*/
  TextStyle smallLowerNormal() => fontFamilyStyle()
      .copyWith(fontSize: smallLower, fontWeight: FontWeight.w400);

  ///  [12]*/
  TextStyle smallLowerMedium() => fontFamilyStyle()
      .copyWith(fontSize: smallLower, fontWeight: FontWeight.w500);

  ///  [12]*/
  TextStyle smallLowerBold() => fontFamilyStyle()
      .copyWith(fontSize: smallLower, fontWeight: FontWeight.w700);

  ///  [12]*/
  TextStyle smallLowerHeavy() => fontFamilyStyle()
      .copyWith(fontSize: smallLower, fontWeight: FontWeight.w800);

  ///  [12]*/
  TextStyle smallLowerBlack() => fontFamilyStyle()
      .copyWith(fontSize: smallLower, fontWeight: FontWeight.w900);

  ///  [13]*/
  TextStyle smallNormal() =>
      fontFamilyStyle().copyWith(fontSize: small, fontWeight: FontWeight.w400);

  ///  [13]*/
  TextStyle smallMedium() =>
      fontFamilyStyle().copyWith(fontSize: small, fontWeight: FontWeight.w500);

  ///  [13]*/
  TextStyle smallBold() =>
      fontFamilyStyle().copyWith(fontSize: small, fontWeight: FontWeight.w700);

  ///  [13]*/
  TextStyle smallHeavy() =>
      fontFamilyStyle().copyWith(fontSize: small, fontWeight: FontWeight.w800);

  ///  [13]*/
  TextStyle smallBlack() =>
      fontFamilyStyle().copyWith(fontSize: small, fontWeight: FontWeight.w900);

  ///  [14]*/
  TextStyle smallUpperNormal() => fontFamilyStyle()
      .copyWith(fontSize: smallUpper, fontWeight: FontWeight.w400);

  ///  [14]*/
  TextStyle smallUpperMedium() => fontFamilyStyle()
      .copyWith(fontSize: smallUpper, fontWeight: FontWeight.w500);

  ///  [14]*/
  TextStyle smallUpperBold() => fontFamilyStyle()
      .copyWith(fontSize: smallUpper, fontWeight: FontWeight.w700);

  ///  [14]*/
  TextStyle smallUpperHeavy() => fontFamilyStyle()
      .copyWith(fontSize: smallUpper, fontWeight: FontWeight.w800);

  ///  [14]*/
  TextStyle smallUpperBlack() => fontFamilyStyle()
      .copyWith(fontSize: smallUpper, fontWeight: FontWeight.w900);

  ///  [15]*/
  TextStyle normalLowerNormal() => fontFamilyStyle()
      .copyWith(fontSize: normalLower, fontWeight: FontWeight.w400);

  ///  [15]*/
  TextStyle normalLowerMedium() => fontFamilyStyle()
      .copyWith(fontSize: normalLower, fontWeight: FontWeight.w500);

  ///  [15]*/
  TextStyle normalLowerBold() => fontFamilyStyle()
      .copyWith(fontSize: normalLower, fontWeight: FontWeight.w700);

  ///  [15]*/
  TextStyle normalLowerHeavy() => fontFamilyStyle()
      .copyWith(fontSize: normalLower, fontWeight: FontWeight.w800);

  ///  [15]*/
  TextStyle normalLowerBlack() => fontFamilyStyle()
      .copyWith(fontSize: normalLower, fontWeight: FontWeight.w900);

  /// [16]*/
  TextStyle normalNormal() =>
      fontFamilyStyle().copyWith(fontSize: normal, fontWeight: FontWeight.w400);

  /// [16]*/
  TextStyle normalMedium() =>
      fontFamilyStyle().copyWith(fontSize: normal, fontWeight: FontWeight.w500);

  /// [16]*/
  TextStyle normalBold() =>
      fontFamilyStyle().copyWith(fontSize: normal, fontWeight: FontWeight.w700);

  /// [16]*/
  TextStyle normalHeavy() =>
      fontFamilyStyle().copyWith(fontSize: normal, fontWeight: FontWeight.w800);

  /// [16]*/
  TextStyle normalBlack() =>
      fontFamilyStyle().copyWith(fontSize: normal, fontWeight: FontWeight.w900);

  /// [17]*/
  TextStyle normalUpperNormal() => fontFamilyStyle()
      .copyWith(fontSize: normalUpper, fontWeight: FontWeight.w400);

  /// [17]*/
  TextStyle normalUpperMedium() => fontFamilyStyle()
      .copyWith(fontSize: normalUpper, fontWeight: FontWeight.w500);

  /// [17]*/
  TextStyle normalUpperBold() => fontFamilyStyle()
      .copyWith(fontSize: normalUpper, fontWeight: FontWeight.w700);

  /// [17]*/
  TextStyle normalUpperHeavy() => fontFamilyStyle()
      .copyWith(fontSize: normalUpper, fontWeight: FontWeight.w800);

  /// [17]*/
  TextStyle normalUpperBlack() => fontFamilyStyle()
      .copyWith(fontSize: normalUpper, fontWeight: FontWeight.w900);

  /// [18]*/
  TextStyle largeLowerNormal() => fontFamilyStyle()
      .copyWith(fontSize: largeLower, fontWeight: FontWeight.w400);

  /// [18]*/
  TextStyle largeLowerMedium() => fontFamilyStyle()
      .copyWith(fontSize: largeLower, fontWeight: FontWeight.w500);

  /// [18]*/
  TextStyle largeLowerBold() => fontFamilyStyle()
      .copyWith(fontSize: largeLower, fontWeight: FontWeight.w700);

  /// [18]*/
  TextStyle largeLowerHeavy() => fontFamilyStyle()
      .copyWith(fontSize: largeLower, fontWeight: FontWeight.w800);

  /// [18]*/
  TextStyle largeLowerBlack() => fontFamilyStyle()
      .copyWith(fontSize: largeLower, fontWeight: FontWeight.w900);

  /// [19]*/
  TextStyle largeNormal() =>
      fontFamilyStyle().copyWith(fontSize: large, fontWeight: FontWeight.w400);

  /// [19]*/
  TextStyle largeMedium() =>
      fontFamilyStyle().copyWith(fontSize: large, fontWeight: FontWeight.w500);

  /// [19]*/
  TextStyle largeBold() =>
      fontFamilyStyle().copyWith(fontSize: large, fontWeight: FontWeight.w700);

  /// [19]*/
  TextStyle largeHeavy() =>
      fontFamilyStyle().copyWith(fontSize: large, fontWeight: FontWeight.w800);

  /// [19]*/
  TextStyle largeBlack() =>
      fontFamilyStyle().copyWith(fontSize: large, fontWeight: FontWeight.w900);

  /// [20]*/
  TextStyle largeUpperNormal() => fontFamilyStyle()
      .copyWith(fontSize: largeUpper, fontWeight: FontWeight.w400);

  /// [20]*/
  TextStyle largeUpperMedium() => fontFamilyStyle()
      .copyWith(fontSize: largeUpper, fontWeight: FontWeight.w500);

  /// [20]*/
  TextStyle largeUpperBold() => fontFamilyStyle()
      .copyWith(fontSize: largeUpper, fontWeight: FontWeight.w700);

  /// [20]*/
  TextStyle largeUpperHeavy() => fontFamilyStyle()
      .copyWith(fontSize: largeUpper, fontWeight: FontWeight.w800);

  /// [20]*/
  TextStyle largeUpperBlack() => fontFamilyStyle()
      .copyWith(fontSize: largeUpper, fontWeight: FontWeight.w900);

  /// [23]*/
  TextStyle captionLowerNormal() => fontFamilyStyle()
      .copyWith(fontSize: captionLower, fontWeight: FontWeight.w400);

  /// [23]*/
  TextStyle captionLowerMedium() => fontFamilyStyle()
      .copyWith(fontSize: captionLower, fontWeight: FontWeight.w500);

  /// [23]*/
  TextStyle captionLowerBold() => fontFamilyStyle()
      .copyWith(fontSize: captionLower, fontWeight: FontWeight.w700);

  /// [23]*/
  TextStyle captionLowerHeavy() => fontFamilyStyle()
      .copyWith(fontSize: captionLower, fontWeight: FontWeight.w800);

  /// [23]*/
  TextStyle captionLowerBlack() => fontFamilyStyle()
      .copyWith(fontSize: captionLower, fontWeight: FontWeight.w900);

  /// [24]*/
  TextStyle captionNormal() => fontFamilyStyle()
      .copyWith(fontSize: caption, fontWeight: FontWeight.w400);

  /// [24]*/
  TextStyle captionMedium() => fontFamilyStyle()
      .copyWith(fontSize: caption, fontWeight: FontWeight.w500);

  /// [24]*/
  TextStyle captionBold() => fontFamilyStyle()
      .copyWith(fontSize: caption, fontWeight: FontWeight.w700);

  /// [24]*/
  TextStyle captionHeavy() => fontFamilyStyle()
      .copyWith(fontSize: caption, fontWeight: FontWeight.w800);

  /// [24]*/
  TextStyle captionBlack() => fontFamilyStyle()
      .copyWith(fontSize: caption, fontWeight: FontWeight.w900);
}
