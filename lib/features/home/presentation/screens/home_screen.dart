import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_coach/features/home/presentation/widgets/home_card_builder.dart';

import '../../../layout/data/model/user.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      //shrinkWrap: true,
      padding: EdgeInsetsDirectional.only(
        top: 10.h,
        start: 10.w,
        end: 10.w,
        bottom: 50.h,
      ),
      itemBuilder: (context, index) => HomeCardBuilder(
        name: users[index].name /*'محمد عادل'*/,
        dateFrom: users[index].dateFrom/*DateTime.now()*/,
        dateTo:users[index].dateTo /*DateTime.now().add(
          const Duration(days: 30),
        ),*/
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: users.length,
    );
  }
}

List<User> users = [
  User(
    id: 1,
    name: 'محمد عادل',
    dateFrom: DateTime.now(),
    dateTo: DateTime.now().add(
      const Duration(
        days: 30,
      ),
    ),
    phone: '01092533072',
    note: 'note',
    gender: 'male',
    price: 100,
    remainingPrice: 0,
  ),
  User(
    id: 1,
    name: 'احمد شكري',
    dateFrom: DateTime.now(),
    dateTo: DateTime.now().add(
      const Duration(
        days: 30,
      ),
    ),
    phone: '01092533072',
    note: 'note',
    gender: 'male',
    price: 100,
    remainingPrice: 0,
  ),
  User(
    id: 1,
    name: 'محمد السيد',
    dateFrom: DateTime.now(),
    dateTo: DateTime.now().subtract(
      const Duration(
        days: 4,
      ),
    ),
    phone: '01092533072',
    note: 'note',
    gender: 'male',
    price: 100,
    remainingPrice: 0,
  ),
  User(
    id: 1,
    name: 'محمد عادل',
    dateFrom: DateTime.now(),
    dateTo: DateTime.now().add(
      const Duration(
        days: 30,
      ),
    ),
    phone: '01092533072',
    note: 'note',
    gender: 'male',
    price: 100,
    remainingPrice: 0,
  ),
  User(
    id: 1,
    name: 'احمد شكري',
    dateFrom: DateTime.now(),
    dateTo: DateTime.now().add(
      const Duration(
        days: 30,
      ),
    ),
    phone: '01092533072',
    note: 'note',
    gender: 'male',
    price: 100,
    remainingPrice: 0,
  ),
  User(
    id: 1,
    name: 'محمد السيد',
    dateFrom: DateTime.now(),
    dateTo: DateTime.now().subtract(
      const Duration(
        days: 5,
      ),
    ),
    phone: '01092533072',
    note: 'note',
    gender: 'male',
    price: 100,
    remainingPrice: 0,
  ),
  User(
    id: 1,
    name: 'محمد عادل',
    dateFrom: DateTime.now(),
    dateTo: DateTime.now().add(
      const Duration(
        days: 30,
      ),
    ),
    phone: '01092533072',
    note: 'note',
    gender: 'male',
    price: 100,
    remainingPrice: 0,
  ),
  User(
    id: 1,
    name: 'محمد السيد',
    dateFrom: DateTime.now(),
    dateTo: DateTime.now().subtract(
      const Duration(
        days: 2,
      ),
    ),
    phone: '01092533072',
    note: 'note',
    gender: 'male',
    price: 100,
    remainingPrice: 0,
  ),
];
