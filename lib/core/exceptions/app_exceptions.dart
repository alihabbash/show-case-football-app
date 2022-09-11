class AppException implements Exception {
  final String? _message;

  String? get message => _message;
  final dynamic data;

  AppException(this.data, [this._message]);

  @override
  String toString() {
    return '$_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException({String? message, data})
      : super(data, message = message ?? 'Unknown Error');
}

class NoInternetException extends AppException {
  NoInternetException({String? message, data})
      : super(data, message = 'No internet connection');
}

class NoItemsException extends AppException {
  NoItemsException({String? message, data}) : super(data, message = 'No Items');
}

class BadRequestException extends AppException {
  BadRequestException({String? message, data})
      : super(data, message = 'Bad Request');
}

class UnauthorisedException extends AppException {
  UnauthorisedException({String? message, data})
      : super(data, message = 'Unauthorised');
}

class NotFoundException extends AppException {
  NotFoundException({String? message, data})
      : super(data, message = 'NotFound');
}

class InvalidInputException extends AppException {
  InvalidInputException({String? message, data})
      : super(data, message = message ?? 'Invalid Input');
}

class ServerErrorException extends AppException {
  ServerErrorException({String? message, data})
      : super(data, message = 'Server Error');
}

class CacheException extends AppException {
  CacheException({String? message, data}) : super(data, message = 'Cash Error');
}

class SessionTimedOutException extends AppException {
  SessionTimedOutException({String? message, data})
      : super(data, message = 'Session Timed Out');
}
