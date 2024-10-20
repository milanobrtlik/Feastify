import 'package:formz/formz.dart';

enum PasswordInputError { short }

class PasswordInput extends FormzInput<String?, PasswordInputError> {
  const PasswordInput.pure([super.value]) : super.dirty();

  PasswordInput.dirty([super.value]) : super.dirty();

  @override
  PasswordInputError? validator(String? value) {
    if (value == null || value.isEmpty || value.length < 5) {
      return PasswordInputError.short;
    }

    return null;
  }
}

extension PasswordInputExtension on PasswordInputError {
  String text() {
    switch (this) {
      case PasswordInputError.short:
        return 'Heslo musí mít alespoň 5 znaků.';
    }
  }
}
