import "package:equatable/equatable.dart";

abstract class LoginClass extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginClass {}

class LoginLoading extends LoginClass {}

class LoginSuccess extends LoginClass {
  final String email;

  LoginSuccess(this.email);


  @override
  List<Object?> get props => [email];
}

class LoginFailure extends LoginClass {
  final String error;

  LoginFailure(this.error);

  @override
  List<Object?> get props => [error];
}
