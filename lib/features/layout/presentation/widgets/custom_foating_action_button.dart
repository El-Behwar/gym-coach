import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gym_coach/app_icons_icons.dart';

import '../../../../core/utils/app_colors.dart';
import '../screens/bottom_sheet_screen.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi / 180 * 45,
      child: GestureDetector(
        onTap: () {
         /* showBottomSheet(
            context: context,
            //enableDrag: ,
            builder: (context) => const BottomSheetScreen(),
            backgroundColor: AppColors.backgroundColor,
            elevation: 7,

          );*/
           Get.bottomSheet(
             //elevation: 10,
            isScrollControlled: true,
            enableDrag: false,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14.r),
                  topRight: Radius.circular(14.r),
                ),
            ),
            BottomSheetScreen(),
            backgroundColor: AppColors.white,
          );
        },
        child: Container(
          width: 48.h,
          height: 48.h,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
            boxShadow: const [
              BoxShadow(
                color: AppColors.blueLightColor,
                blurRadius: 10,
                //blurStyle:BlurStyle.inner ,
                offset: Offset(4, -3),
              ),
            ],
            gradient: const LinearGradient(
              colors: [
                AppColors.primaryColor,
                AppColors.primaryColor,
                AppColors.blueLightColor,
                AppColors.iconColor,
              ],
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Transform.rotate(
            angle: math.pi / 180 * -45,
            child: Icon(
              AppIcons.user_cirlce_add/*Icons.add*/,
              size: 35.sp,
              textDirection: TextDirection.rtl,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
