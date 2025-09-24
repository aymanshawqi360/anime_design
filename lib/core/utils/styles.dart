import 'package:anime_ui/core/utils/font_weight_helper.dart';
import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:anime_ui/core/utils/texts_manager.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();
  static TextStyle font24Bold = TextStyle(
    fontFamily: TextsManager.fontRalewayRegular,
    color: HexColor(hexColor: '18153F'),
    fontSize: 24,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14Bold = TextStyle(
    fontFamily: TextsManager.fontRalewayRegular,
    color: HexColor(hexColor: '5436F8'),
    fontSize: 14,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font15Bold = TextStyle(
    fontFamily: TextsManager.fontRalewayRegular,
    color: HexColor(hexColor: '18153F'),
    fontSize: 15,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font12Medium = TextStyle(
    fontFamily: TextsManager.fontRalewayRegular,
    color: HexColor(hexColor: 'A9A9A9'),
    fontSize: 12,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font25Bold = TextStyle(
    fontFamily: TextsManager.fontRalewayRegular,
    color: HexColor(hexColor: '000000'),
    fontSize: 25,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font13Medium = TextStyle(
    fontFamily: TextsManager.fontRalewayRegular,
    color: HexColor(hexColor: 'FFFFFF'),
    fontSize: 13,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14Regular = TextStyle(
    // fontFamily: TextsManager.fontRalewayRegular,
    color: HexColor(hexColor: 'FFFFFF'),
    fontSize: 14,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font15SemiBold = TextStyle(
    fontFamily: TextsManager.fontRalewayRegular,
    color: HexColor(hexColor: 'FFFFFF'),
    fontSize: 15,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font14SemiMedium = TextStyle(
    fontFamily: TextsManager.fontRalewayRegular,
    color: HexColor(hexColor: 'CBC4C4'),
    fontSize: 14,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font22Bold = TextStyle(
    fontFamily: TextsManager.fontRalewayRegular,
    color: HexColor(hexColor: '18153F'),
    fontSize: 22,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font23Bold = TextStyle(
    fontFamily: TextsManager.ralewayExtrabold,
    color: HexColor(hexColor: '18153F'),
    fontSize: 23.8,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14Medium = TextStyle(
    fontFamily: TextsManager.ralewayMedium,
    color: HexColor(hexColor: 'AEADB5'),
    fontSize: 14,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font16Bold = TextStyle(
    fontFamily: TextsManager.ralewayMedium,

    color: HexColor(hexColor: 'FFFFFF'),
    fontSize: 14,
    fontWeight: FontWeightHelper.bold,
  );
}
