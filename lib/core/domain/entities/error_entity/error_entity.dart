import 'package:dio/dio.dart';

class ErrorEntity {
  final String message;
  final String? errorMessage;
  final dynamic error;
  final StackTrace? stackTrace;

  ErrorEntity({
    required this.message,
    this.errorMessage,
    this.error,
    this.stackTrace,
  });

  factory ErrorEntity.fromException(dynamic error) {
    if (error is ErrorEntity) return error;
    final errorEntity = ErrorEntity(message: "Неизвестная ошибка"); //Неизвестная ошибка

    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.cancel:
          return ErrorEntity(message: "Запрос к серверу был отменен"); //Запрос к серверу был отменен

        case DioErrorType.connectionTimeout:
          return ErrorEntity(message: "Тайм-аут соединения с сервером"); //Тайм-аут соединения с сервером

        case DioErrorType.receiveTimeout:
          return ErrorEntity(message: "Тайм-аут получения данных от сервера"); //Тайм-аут получения данных от сервера

        case DioErrorType.connectionError:
          return ErrorEntity(message: "Нет подключения к сети интернет"); //Нет подключения к сети интернет

        case DioErrorType.unknown:
          return ErrorEntity._handleError(error.response?.statusCode);

        default:
          errorEntity;
      }

      try {
        return ErrorEntity(
            stackTrace: error.stackTrace,
            error: error,
            message: error.response?.data["message"] ?? "Неизвестная ошибка",
            errorMessage: error.response?.data["error"] ?? "Неизвестная ошибка");
      } catch (_) {
        return errorEntity;
      }
    }

    return errorEntity;
  }

  factory ErrorEntity._handleError(int? statusCode) {
    switch (statusCode) {
      case 400:
        return ErrorEntity(message: "Неверный запрос"); //Неверный запрос
      case 401:
        return ErrorEntity(message: "Неавторизованный запрос"); //Неавторизованный запрос
      case 402:
        return ErrorEntity(
            message:
                "Внутренняя ошибка или ошибка конфигурации сервера"); //Внутренняя ошибка или ошибка конфигурации сервера
      case 403:
        return ErrorEntity(message: "Доступ к данным запрещен"); //Доступ к данным запрещен
      case 404:
        return ErrorEntity(message: "Данные не найдены"); //Данные не найдены
      case 500:
        return ErrorEntity(message: "Внутренняя ошибка сервера"); //"Внутренняя ошибка сервера"
      case 502:
        return ErrorEntity(message: "Ошибка шлюза"); //Ошибка шлюза
      default:
        return ErrorEntity(message: "Неизвестная ошибка"); //прочие ошибки
    }
  }
}
