import 'package:equatable/equatable.dart';

class Failure extends Equatable{
  final String code;
  final String message;

  Failure({required this.code, required this.message,});

  @override
  // TODO: implement props
  List<Object?> get props => [code,message];
}

String getArMessageOfError(Failure failure) {
  if (failure.code ==  'invalid-email') {
    return 'ادخل الايميل بالطريقه الصحيحه';
  }else if (failure.code ==  'invalid-credential') {
    return 'اكتب الايميل صح الله يكرمك';
  } else if (failure.code == 'user-not-found') {
    return 'لا يوجد مستخدم لهذا الايميل';
  } else if (failure.code == 'wrong-password') {
    return 'كلمة المرور خاطئه';
  } else {
    return failure.message;
  }
}