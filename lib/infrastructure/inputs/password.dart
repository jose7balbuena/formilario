import 'package:formz/formz.dart';

// Define input validation errors
enum PasswordError { empty, length }

class Password extends FormzInput<String,PasswordError>{
// Call super.pure to represent an unmodified form input.
const Password.pure() : super.pure('');
// Call super.dirty to represent a modified form input.
const Password.dirty(String value) : super.dirty(value);


  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == PasswordError.empty) return 'El campo es requerido';
    if (displayError == PasswordError.length) return 'Minimo 6 caracteres';

    return null;
  }


  @override
  PasswordError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return PasswordError.empty;
    if (value.length < 6) return PasswordError.length;
    

    return null;
  }
  
}