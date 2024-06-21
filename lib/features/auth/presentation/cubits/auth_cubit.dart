import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_coach/core/error/failure.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> login({
    required String emailAddress,
    required String password,
  }) async {
    try {
      emit(LoginLoadingState());
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: emailAddress,
          password: password
      );
      emit(LoginLoadedState());
      print(userCredential.user!.email);
      print(userCredential.user!.phoneNumber);
    } on FirebaseAuthException catch (e) {
      emit(LoginErrorState(Failure(code: e.code, message: e.message!)));
      log('${e.code} => ${e.message}');
      /*if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }*/
    }
  }
}


