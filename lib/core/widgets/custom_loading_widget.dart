import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gym_coach/core/utils/app_colors.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitWave(
        color: color ?? AppColors.primaryColor/*Theme.of(context).colorScheme.secondary*/,
        size: 24,
      ),
    );
  }
}
