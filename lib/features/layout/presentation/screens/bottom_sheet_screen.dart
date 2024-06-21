import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_coach/core/utils/app_colors.dart';
import 'package:gym_coach/core/widgets/custom_form_field.dart';

import '../../../../core/widgets/custom_button.dart';
import '../widgets/date_part.dart';
import '../widgets/gender_part.dart';
import '../widgets/price_part.dart';

class BottomSheetScreen extends StatelessWidget {
  BottomSheetScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController dateFromController = TextEditingController();
  TextEditingController dateToController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController priceRemainController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14.r),
          topRight: Radius.circular(14.r),
        ),
      ),
      padding: EdgeInsets.all(5.w),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 5.h,
                    width: 0.25.sw,
                    decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.all(Radius.circular(50.r))),
                    //margin: EdgeInsets.symmetric(vertical: 4.h),
                  ),
                ),
                Align(
                  //alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: Text(
                      'اضافه مشترك',
                      style: Theme.of(context).textTheme.displayMedium,
                      //textAlign: TextAlign.center,
                    ),
                  ),
                ),
                CustomFormFiled(
                  labelText: 'الإسم',
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  backgroundColor: AppColors.textFieldBackground,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'ادخل اسم المشترك';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.w,
                ),
                DatePart(
                  dateFromController: dateFromController,
                  dateToController: dateToController,
                ),
                SizedBox(
                  height: 15.w,
                ),
                PricePart(
                  priceController: priceController,
                  priceRemainController: priceRemainController,
                ),
                const GenderPart(
                  gender1: 'ذكر',
                  gender2: 'انثي',
                ),
                CustomFormFiled(
                  labelText: 'رقم الهاتف',
                  controller: mobileController,
                  backgroundColor: AppColors.textFieldBackground,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 15.w,
                ),
                CustomFormFiled(
                  hint: 'ملاحظات',
                  controller: noteController,
                  backgroundColor: AppColors.textFieldBackground,
                  maxLines: 3,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: CustomButton(
                    text:Text(
                      'اضافه مشترك',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: AppColors.white,
                      ),
                    ) ,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        print('done');
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
