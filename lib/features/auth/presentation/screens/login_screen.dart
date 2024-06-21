import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gym_coach/core/error/failure.dart';
import 'package:gym_coach/core/widgets/custom_button.dart';
import 'package:gym_coach/core/widgets/custom_form_field.dart';
import 'package:gym_coach/core/widgets/custom_loading_widget.dart';
import 'package:gym_coach/features/auth/presentation/cubits/auth_cubit.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../layout/presentation/screens/bottom_navigation.dart';
import '../widgets/remember_me.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                height: 0.33.sh,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                      25.r,
                    ),
                    bottomLeft: Radius.circular(
                      25.r,
                    ),
                  ),
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
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: CircleAvatar(
                    radius: 60.r,
                    backgroundColor: AppColors.blueLightColor,
                    child: Image.asset(
                      'assets/images/Extreme_Gym.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: CustomFormFiled(
                  labelText: 'البريد الالكتروني',
                  controller: emailController,
                  keyboardType: TextInputType.name,
                  backgroundColor: AppColors.textFieldBackground,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'ادخل البريد الالكتروني';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: CustomFormFiled(
                  labelText: 'كلمه السر',
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  backgroundColor: AppColors.textFieldBackground,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'ادخل كلمه السر';
                    }
                    return null;
                  },
                ),
              ),
              const RememberMe(),
              SizedBox(
                height: 40.h,
              ),
              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is LoginLoadedState) {
                    Get.off(() => const BottomNavigation());
                  }
                  if (state is LoginErrorState) {
                    /*showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: AppColors.backgroundGreen,
                        content: Text(
                          state.message!,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: AppColors.black),
                        ),
                        title: Text(
                          'فشل',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: AppColors.black),
                        ),
                      ),
                    );*/
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        backgroundColor: Colors.transparent,
                        content: SizedBox(
                          width: 0.75.sw,
                          height: 200,
                          child: Stack(
                            alignment: Alignment.center,
                            fit: StackFit.passthrough,
                            children: [
                              Positioned(
                                bottom: 0,
                                right: 1,
                                left: 1,
                                child: Container(
                                  width: 0.75.sw,
                                  height: 175,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 16,
                                              right: 16,
                                              bottom: 8,
                                              top: 20),
                                          child: Center(
                                            child: Text(
                                               getArMessageOfError(state.failure),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 0.75.sw,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryColor
                                              .withOpacity(0.4),
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(12),
                                              bottomRight: Radius.circular(12)),
                                        ),
                                        child: TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          child: Text(
                                            'اوافق',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 0,
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return CustomButton(
                    text: (state is LoginLoadingState)
                        ? const CustomLoadingWidget(
                            color: AppColors.white,
                          )
                        : Text(
                            'تسجيل الدخول',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  color: AppColors.white,
                                ),
                          ),
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        /// check the firebase auth if true navigate to
                        //Get.off(() => const BottomNavigation());
                        context.read<AuthCubit>().login(
                              emailAddress: emailController.text,
                              password: passwordController.text,
                            );
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
