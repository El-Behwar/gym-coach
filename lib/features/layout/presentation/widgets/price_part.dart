import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_form_field.dart';

class PricePart extends StatelessWidget {
  const PricePart({
    super.key,
    required this.priceController,
    required this.priceRemainController,
  });

  final TextEditingController priceController;
  final TextEditingController priceRemainController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'قيمة الاشتراك المدفوعة ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Expanded(
          child: CustomFormFiled(
            hint: r'$$',
            controller: priceController,
            backgroundColor: AppColors.textFieldBackground,
            suffixIcon: const Icon(Icons.attach_money_sharp,color: AppColors.primaryColor,),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.isEmpty) {
                return 'ادخل القيمة';
              }
              return null;
            },
          ),
        ),
        Text(
          ' الباقي ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Expanded(
          child: CustomFormFiled(
            hint: r'$$',
            controller: priceRemainController,
            backgroundColor: AppColors.textFieldBackground,
            suffixIcon: const Icon(Icons.attach_money_sharp,color: AppColors.primaryColor,),
            keyboardType: TextInputType.number,
            /*validator: (value) {
              if (value!.isEmpty) {
                return 'ادخل الباقي';
              }
              return null;
            },*/
          ),
        ),
      ],
    );
  }
}