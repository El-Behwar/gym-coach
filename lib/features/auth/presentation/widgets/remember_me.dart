import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({
    super.key,
  });

  //bool value = true;
  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: 0.4.sw,
        child: CheckboxListTile(
          visualDensity: VisualDensity.compact,
          value: value,
          onChanged: (newValue){
            setState(() {
              value = !value;
            });
          },
          dense: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
          ),
          contentPadding: EdgeInsets.zero,
          activeColor:  AppColors.primaryColor,
          controlAffinity: ListTileControlAffinity.trailing,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
          ),
          title: Text(
            'أحفظ الحساب',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
