import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dashboard_page.dart';
import 'login_class.dart';


class LoginLogic extends Cubit<LoginClass> {
  LoginLogic() : super(LoginInitial());

  void login(String email, String password) async {
    emit(LoginLoading());

    await Future.delayed(Duration(seconds: 2));

    final emailRegex = RegExp(r'^[\w.\-]+@([\w\-]+\.)+[a-zA-Z]{2,}$');

    if (!emailRegex.hasMatch(email)) {
      emit(LoginFailure("Invalid email format"));
    } else if (password.length < 6) {
      emit(LoginFailure("Password must be at least 6 characters"));
    } else {
      emit(LoginSuccess(email));
    }
  }
}

