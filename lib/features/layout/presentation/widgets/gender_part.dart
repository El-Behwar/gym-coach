import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class GenderPart extends StatefulWidget {
  final String gender1;
  final String gender2;
  const GenderPart({
    super.key, required this.gender1, required this.gender2,
  });

  @override
  State<GenderPart> createState() => _GenderPartState();
}

class _GenderPartState extends State<GenderPart> {
  String gender = 'male';
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Flexible(
          child: RadioListTile<String>(
            value: 'male',
            groupValue: gender,
            activeColor: AppColors.primaryColor,
            contentPadding: EdgeInsets.symmetric(vertical: 6.h),
            dense: true,
            visualDensity: VisualDensity.compact,
            onChanged: (newVale){
              setState(() {
                gender = newVale!;
              });
            },
            title: Text(widget.gender1,style: Theme.of(context).textTheme.bodyMedium,),
          ),
        ),
        Flexible(
          child: RadioListTile<String>(
            value: 'female',
            groupValue: gender,
            activeColor: AppColors.primaryColor,
            contentPadding: EdgeInsets.symmetric(vertical: 6.h),
            dense: true,
            visualDensity: VisualDensity.compact,
            onChanged: (newVale){
              setState(() {
                gender = newVale!;
                print(gender);
              });
            },
            title: Text(widget.gender2,style: Theme.of(context).textTheme.bodyMedium,),
          ),
        ),
      ],
    );
  }
}