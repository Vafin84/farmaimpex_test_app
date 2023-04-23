import 'package:injectable/injectable.dart';

@singleton
class ValidationService {
  String? username(String? value) {
    if (value?.isEmpty == true) {
      return "Обязательное поле";
    }
    if ((value ?? "").length < 4) {
      return "Длина никнейма менее 4 символов";
    }
    return null;
  }

  String? email(String? value) {
    if (value?.isEmpty == true) {
      return "Обязательное поле";
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value ?? "")) {
      return "Неверный формат email";
    }
    return null;
  }

  String? password(String? value) {
    if (value?.isEmpty == true) {
      return "Обязательное поле";
    }

    if ((value ?? "").length < 5) {
      return "Длина пвроля не менее 6 символов";
    }
    return null;
  }

  String? name(String? value) {
    if (value?.isEmpty == true) {
      return "Обязательное поле";
    }
    return null;
  }
}
