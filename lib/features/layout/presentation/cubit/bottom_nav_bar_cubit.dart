import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../home/presentation/screens/home_screen.dart';
import '../screens/graph_screen.dart';
import '../../../search/presentation/screens/search_screen.dart';
import '../screens/subscription_expiration_screen.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());


  int currentTap = 0;
  //Widget currentScreen = HomeScreen();

  List<Widget> screens = [
    const HomeScreen(),
    const SubscriptionExpirationScreen(),
    SearchScreen(),
    const GraphScreen(),
  ];
  List<String> appBarTitle = [
    'كل المشتركين',
    'انتهاء الاشتراكات',
    'بحث',
    'صفحه اخرى',
  ];
  changeScreen({required int currentTap}){
    emit(BottomNavBarInitial());
    this.currentTap = currentTap;
    emit(ChangeScreenState());
  }
}
