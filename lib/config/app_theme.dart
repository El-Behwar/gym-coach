import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym_coach/core/utils/app_colors.dart';

import '../core/utils/app_font.dart';
import '../core/utils/app_text_style.dart';

ThemeData appTheme() => ThemeData.light(useMaterial3: true).copyWith(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      /*appBarTheme: const AppBarTheme(
        //backgroundColor: AppColors.backgroundColor,
        *//*systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.backgroundColor,
          statusBarBrightness: Brightness.dark
        )*//*
      ),*/

  textTheme: _textTheme,
     /* datePickerTheme: DatePickerThemeData(
        backgroundColor: AppColors.white,
        rangePickerBackgroundColor: AppColors.white,
        confirmButtonStyle: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor,)
        )
      ),*/
  
      bottomAppBarTheme:
          const BottomAppBarTheme(color: AppColors.white,elevation: 20,),
    );


final TextTheme _textTheme = TextTheme(
  displayLarge: getBoldStyle(
    color: AppColors.black,
    fontSize: FontSize.s22,
  ),
  displayMedium: getMediumStyle(
    color: AppColors.black,
    fontSize: FontSize.s20,
  ),
  displaySmall: getRegularStyle(
    color: AppColors.gray5,
    fontSize: FontSize.s16,
  ),
  headlineLarge: getBoldStyle(
    color: AppColors.gray5,
    fontSize: FontSize.s20,
  ),
  headlineMedium: getRegularStyle(
    color: AppColors.black,
    fontSize: FontSize.s14,
  ),
  // hint text style of formText
  bodySmall: getRegularStyle(
    color: AppColors.gray5,
    fontSize: FontSize.s16,
  ),
  bodyMedium: getMediumStyle(
    color: AppColors.black,
    fontSize: FontSize.s16,
  ),
  /*titleMedium: getMediumStyle(
      color: ColorManager.black,
      fontSize: FontSize.s16,
    ),
    bodyLarge: getRegularStyle(
      color: ColorManager.gray5,
      fontSize: FontSize.s16,
    ),

    bodySmall: getRegularStyle(color: ColorManager.gray3),*/
);