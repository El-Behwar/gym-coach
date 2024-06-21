import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_coach/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:gym_coach/features/layout/presentation/cubit/bottom_nav_bar_cubit.dart';

class AppBlocs {
  static final appBlocs = [
    BlocProvider<BottomNavBarCubit>(
      create: (context) => BottomNavBarCubit(),
    ),
    BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
    ),
  ];
}
