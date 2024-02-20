abstract class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions(this._message, this._prefix);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message])
      : super(message, "No Internet Available");
}

class RequestTimeoutException extends AppExceptions {
  RequestTimeoutException([String? message])
      : super(message, "Request Timeout Error");
}

class ServerInterErrorException extends AppExceptions {
  ServerInterErrorException([String? message])
      : super(message, "Internal Server Error");
}

class InvalidRequestException extends AppExceptions {
  InvalidRequestException([String? message])
      : super(message, "Invalid Request Error");
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, "Error getting while communicating with server");
}
