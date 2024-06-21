class AppMargin {
  static const double m8 = 8.0;
  static const double m10 = 10.0;
  static const double m12 = 12.0;
  static const double m14 = 14.0;
  static const double m16 = 16.0;
  static const double m18 = 18.0;
  static const double m20 = 20.0;
}

class AppPadding {
  static const double p8 = 8.0;
  static const double p10 = 10.0;
  static const double p12 = 12.0;
  static const double p14 = 14.0;
  static const double p16 = 16.0;
  static const double p18 = 18.0;
  static const double p20 = 20.0;
}

class AppSize {
  static const double s0 = 0;
  static const double s1 = 1;
  static const double s1_5 = 1.5;
  static const double s2 = 2.0;
  static const double s4 = 4.0;
  static const double s5 = 5.0;
  static const double s6 = 6.0;
  static const double s7 = 7.0;
  static const double s8 = 8.0;
  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s22 = 22.0;
  static const double s24 = 24.0;
  static const double s26 = 26.0;
  static const double s28 = 28.0;
  static const double s30 = 30.0;
  static const double s32 = 32.0;
  static const double s34 = 34.0;
  static const double s35 = 35.0;
  static const double s36 = 36.0;
  static const double s38 = 38.0;
  static const double s40 = 40.0;
  static const double s44 = 44.0;
  static const double s48 = 48.0;
  static const double s55 = 55.0;
  static const double s56 = 56.0;
  static const double s58 = 58.0;
  static const double s60 = 60.0;
  static const double s64 = 64.0;
  static const double s68 = 68.0;
  static const double s78 = 78.0;
  static const double s88 = 88.0;
  static const double s84 = 84.0;
  static const double s94 = 94.0;
  static const double s96 = 96.0;
  static const double s100 = 100.0;
  static const double s106 = 106.0;
  static const double s116 = 116.0;
  static const double s125 = 125.0;
  static const double s130 = 130.0;
  static const double s140 = 140.0;
  static const double s148 = 148.0;
  static const double s150 = 150.0;
  static const double s160 = 160.0;
  static const double s175 = 175.0;
  static const double s185 = 185.0;
  static const double s200 = 200.0;
  static const double s250 = 250.0;
  static const double s270 = 270.0;
  static const double s280 = 280.0;
  static const double s289 = 289.0;
  static const double s300 = 300.0;
  static const double s305 = 305.0;
  static const double s310 = 310.0;
  static const double s353 = 353.0;
  static const double s376 = 376.0;
  static const double s420 = 420.0;
  static const double s461 = 461.0;
  static const double s850 = 850.0;

  static double responsiveHeight({required double height}) {
    return (height * 100) / 811;
  }

  // static double responsiveHeightTablet({required double height}) {
  //   return ((height * 1.3) * 100) / appHeight!;
  // }
  //
  static double responsiveWidth({required double width}) {
    return (width * 100) / 374;
  }
//
// static double responsiveWidthTablet({required double width}) {
//   return ((width * 2) * 100) / appWidth!;
// }
}
