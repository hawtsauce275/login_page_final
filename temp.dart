import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_class.dart';


class LoginLogic extends Cubit<LoginClass> {
  LoginLogic() : super(LoginInitial());


  String? validateEmail(String value) {
    if (value.trim().isEmpty) return 'Please enter your email';
    final emailRegex = RegExp(r'^[\w.\-]+@([\w\-]+\.)+[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value.trim())) return 'Enter a valid email';
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) return 'Please enter your password';
    if (value.length < 6) return 'Password must be at least 6 characters';
    return null;
  }

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    await Future.delayed(const Duration(seconds: 2));

    if (validateEmail(email) == null && validatePassword(password) == null) {
      emit(LoginSuccess());
    } else {
      emit(LoginFailure("Invalid credentials"));
    }
  }
}
