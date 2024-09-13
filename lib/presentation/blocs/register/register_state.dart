part of 'register_cubit.dart';

enum FormStatus { invalid, valid, validating, posting }

class RegisterFormState extends Equatable {
  final FormStatus formstatus;
  final String username;
  final String email;
  final String password;

  const RegisterFormState(
      {this.formstatus = FormStatus.invalid,
      this.username = '',
      this.email = '',
      this.password = ''});

  RegisterFormState copyWith({
    FormStatus? formstatus,
    String? username,
    String? email,
    String? password,
  }) =>
      RegisterFormState(
       formstatus:formstatus ?? this.formstatus,
       username: username ?? this.username,
       email: email ?? this.email,
       password: password ?? this.password, 
      );

  @override
  List<Object> get props => [formstatus, username, email, password];
}
