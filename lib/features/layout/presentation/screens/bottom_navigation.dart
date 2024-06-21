import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_coach/core/utils/app_colors.dart';
import 'package:gym_coach/features/layout/presentation/cubit/bottom_nav_bar_cubit.dart';
import 'package:gym_coach/features/layout/presentation/widgets/bottom_navigation_bar_widget.dart';
import 'package:gym_coach/features/layout/presentation/widgets/custom_foating_action_button.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        final cubit = context.read<BottomNavBarCubit>();
        return Scaffold(
          resizeToAvoidBottomInset: false,      ///  make the floating action button not move
          //extendBodyBehindAppBar: true,
          extendBody: true,
          appBar: AppBar(
            scrolledUnderElevation: 3,
            elevation: 1,
            toolbarHeight: 45.h,
            surfaceTintColor: AppColors.backgroundColor,
            shadowColor: AppColors.iconColor.withOpacity(0.6),
            centerTitle: true,
            backgroundColor: AppColors.backgroundColor,
            title: Text(
              cubit.appBarTitle[cubit.currentTap],
              style: Theme.of(context).textTheme.displayLarge,
              /*TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 19.sp,
                fontWeight: FontWeight.w600,
              ),*/
            ),
          ),
          body: cubit.screens[cubit.currentTap],
          floatingActionButton: const CustomFloatingActionButton(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBarWidget(cubit: cubit),
        );
      },
    );
  }
}
