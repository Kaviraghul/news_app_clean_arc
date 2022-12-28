import 'package:flutter/cupertino.dart';
import 'package:news_app/presentation/resources/fonts_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize      : fontSize,
    fontFamily    : fontFamily,
    fontWeight    : fontWeight,
    color         : color,
  );
}

TextStyle getLightStyle(
    {double fontSize = FontSizeManager.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontsWeightManager.light, color);
}

TextStyle getRegularStyle(
    {double fontSize = FontSizeManager.s14, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontsWeightManager.regular, color);
}

TextStyle getMediumStyle(
    {double fontSize = FontSizeManager.s16, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontsWeightManager.medium, color);
}

TextStyle getBoldStyle(
    {double fontSize = FontSizeManager.s18, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontsWeightManager.bold, color);
}

TextStyle getSemiBoldStyle(
    {double fontSize = FontSizeManager.s20, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontsWeightManager.semiBold, color);
}
