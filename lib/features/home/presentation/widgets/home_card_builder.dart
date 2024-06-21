import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/app_colors.dart';

class HomeCardBuilder extends StatelessWidget {
  const HomeCardBuilder({
    super.key,
    required this.name,
    required this.dateFrom,
    required this.dateTo,
  });
  final String name;
  final DateTime dateFrom;
  final DateTime dateTo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print(dateFrom);
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 0.7.w,
          bottom: 0.7.w,
          left: 0.7.w,
          right: 8.w,
        ),
        decoration: BoxDecoration(
            color:(dateTo.isBefore(DateTime.now()))? AppColors.borderColorFailed:AppColors.borderColorDone,

            ///  border color
            borderRadius: BorderRadius.all(Radius.circular(8.r))),
        child: Container(

          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.r))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                name/*'محمد عادل'*/,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: 'من  ',
                    ),
                    TextSpan(text: DateFormat('dd-MM-yyyy').format(dateFrom),
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const TextSpan(text: '   الي   ',
                    ),
                    TextSpan(text: DateFormat('dd-MM-yyyy').format(dateTo)/*.replaceAll('/', '-')*/,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}