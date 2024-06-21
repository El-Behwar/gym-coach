import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_coach/app_icons_icons.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_form_field.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: CustomFormFiled(
              hint: 'بحث بإسم المشترك',
              prefixIcon: const Icon(AppIcons.search_normal2,color: AppColors.primaryColor),
              controller: searchController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
              backgroundColor: AppColors.white,
            ),
          ),
          const Center(
            child: Text('SearchScreen'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: CustomFormFiled(
              hint: 'بحث بإسم المشترك',
              prefixIcon: const Icon(AppIcons.search_normal2,color: AppColors.primaryColor),
              controller: searchController,
              isSearchField: true,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
              backgroundColor: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
