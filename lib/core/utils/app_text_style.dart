import 'package:flutter/material.dart';
import 'package:gym_coach/core/utils/app_font.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) =>
    TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        height: 1.1,
        fontFamily: FontConstants.fontFamily);

///Regular Style
TextStyle getRegularStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontWeightManger.regular, color);

/// Medium Style
TextStyle getMediumStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontWeightManger.medium, color);

///SemiBold Style
TextStyle getSemiBoldStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(fontSize, FontWeightManger.semiBold, color);

///Bold Style
TextStyle getBoldStyle(
        {double fontSize = FontSize.s20, required Color color}) =>
    _getTextStyle(fontSize, FontWeightManger.bold, color);
