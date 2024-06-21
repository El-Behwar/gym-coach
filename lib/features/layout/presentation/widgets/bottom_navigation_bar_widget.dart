import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_coach/features/layout/presentation/cubit/bottom_nav_bar_cubit.dart';
import '../../../../app_icons_icons.dart';
import '../../../../core/utils/app_colors.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key, required this.cubit});

  final BottomNavBarCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.gray5,
              offset: const Offset(2, 2),
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 12.w,
              ),
              IconButton(
                padding: EdgeInsetsDirectional.zero/*only(start: 10.w)*/,
                onPressed: () {
                  cubit.changeScreen(currentTap: 0);
                },
                highlightColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                icon: Icon(
                  Icons.groups,
                  color: cubit.currentTap == 0
                      ? AppColors.primaryColor
                      : AppColors.iconColor,
                  size: 34.w,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              IconButton(
                onPressed: () {
                  cubit.changeScreen(currentTap: 1);
                },
                highlightColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                icon: Icon(
                  AppIcons.money_recive,
                  color: cubit.currentTap == 1
                      ? AppColors.primaryColor
                      : AppColors.iconColor,
                  size: 24.w,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  cubit.changeScreen(currentTap: 2);
                },
                highlightColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                icon: Icon(
                  AppIcons.search_normal,
                  color: cubit.currentTap == 2
                      ? AppColors.primaryColor
                      : AppColors.iconColor,
                  size: 24.w,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              IconButton(
                onPressed: () {
                  cubit.changeScreen(currentTap: 3);
                },
                padding: EdgeInsetsDirectional.zero/*only(end: 18.w)*/,
                highlightColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                //visualDensity: VisualDensity.comfortable,
                icon: Icon(
                 AppIcons.women_group_icon,
                  color: cubit.currentTap == 3
                      ? AppColors.primaryColor
                      : AppColors.iconColor,
                  size: 20.w,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
