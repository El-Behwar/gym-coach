import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_coach/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Widget text;
  final Function() onTap;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 45,
          width: 0.7.sw,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            boxShadow: const [
              BoxShadow(
                color: AppColors.blueLightColor,
                blurRadius: 5,
                //blurStyle:BlurStyle.inner ,
                offset: Offset(2, -2),
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
          child: text,
        ),
      ),
    );
  }
}