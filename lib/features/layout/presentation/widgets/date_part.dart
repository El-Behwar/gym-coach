import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_form_field.dart';

class DatePart extends StatelessWidget {
  const DatePart({
    super.key,
    required this.dateFromController,
    required this.dateToController,
  });

  final TextEditingController dateFromController;
  final TextEditingController dateToController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'من ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Expanded(
          child: CustomFormFiled(
            hint: 'بداية الاشتراك',
            controller: dateFromController,
            readOnly: true,
            backgroundColor: AppColors.textFieldBackground,
            // obscureText: true,
            validator: (value) {
              if (value!.isEmpty) {
                return 'ادخل التاريخ';
              }
              return null;
            },
            suffixIcon: IconButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(
                    const Duration(days: 200),
                  ),
                  //DateTime.parse('2023-06-17')
                  builder: (context, child) => Theme(
                    data: ThemeData.light(useMaterial3: false).copyWith(
                      dialogBackgroundColor:  AppColors.backgroundColor,
                      colorScheme: const ColorScheme.light(
                        //background: AppColors.black,
                          onBackground:  AppColors.backgroundColor,
                          //surface: AppColors.black,
                          onPrimary: AppColors.white, // selected text color
                          onSurface: AppColors.black, // default text color
                          primary: AppColors.primaryColor // circle color
                      ),

                    ),
                    child: child!,
                  ),
                ).then((value) {
                  if (value != null) {
                    dateFromController.text =
                        intl.DateFormat('dd-MM-yyyy').format(value);
                    dateToController.text =
                        intl.DateFormat('dd-MM-yyyy').format(
                      value.add(
                        const Duration(
                          days: 30,
                        ),
                      ),
                    );
                  }
                });
              },
              icon: const Icon(
                Icons.date_range_outlined,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
        Text(
          ' الي ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Expanded(
          child: CustomFormFiled(
            hint: 'نهابة الاشتراك',
            controller: dateToController,
            readOnly: true,
            backgroundColor: AppColors.textFieldBackground,
            validator: (value) {
              if (value!.isEmpty) {
                return 'ادخل التاريخ';
              }
              return null;
            },
            // obscureText: true,
            suffixIcon: IconButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(
                    const Duration(days: 200),
                  ), //DateTime.parse('2023-06-17')
                ).then((value) {
                  if (value != null) {
                    dateToController.text =
                        intl.DateFormat('dd-MM-yyyy').format(value);
                  }
                });
              },
              icon: const Icon(
                Icons.date_range_outlined,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
