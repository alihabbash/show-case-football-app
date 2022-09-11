import '../exceptions/app_exceptions.dart';

class ErrorEntity {
  ErrorEntity({
    this.code,
    this.errorMessage,
  });

  ErrorEntity.fromException(AppException exception) {
    errorMessage = exception.message;
  }

  int? code;
  String? errorMessage;
}
