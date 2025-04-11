import 'package:supabase_flutter/supabase_flutter.dart';

import 'api_error_model.dart';
import 'api_constants.dart';

enum DataSource {
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  Failure,
  // API_LOGIC_ERROR,
  DEFAULT
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTORISED = 401; // failure, user is not authorised
  static const int FORBIDDEN = 403; //  failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found
  static const int API_LOGIC_ERROR = 422; // API , lOGIC ERROR

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

// class ResponseMessage {
//   static const String NO_CONTENT =
//       ApiErrors.noContent; // success with no data (no content)
//   static const String BAD_REQUEST =
//       ApiErrors.badRequestError; // failure, API rejected request
//   static const String UNAUTORISED =
//       ApiErrors.unauthorizedError; // failure, user is not authorised
//   static const String FORBIDDEN =
//       ApiErrors.forbiddenError; //  failure, API rejected request
//   static const String INTERNAL_SERVER_ERROR =
//       ApiErrors.internalServerError; // failure, crash in server side
//   static const String NOT_FOUND =
//       ApiErrors.notFoundError; // failure, crash in server side

//   // local status code
//   static String CONNECT_TIMEOUT = ApiErrors.timeoutError;
//   static String CANCEL = ApiErrors.defaultError;
//   static String RECIEVE_TIMEOUT = ApiErrors.timeoutError;
//   static String SEND_TIMEOUT = ApiErrors.timeoutError;
//   static String CACHE_ERROR = ApiErrors.cacheError;
//   static String NO_INTERNET_CONNECTION = ApiErrors.noInternetError;
//   static String DEFAULT = ApiErrors.defaultError;
// }

class SupabaseErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  SupabaseErrorHandler.handle(dynamic error) {
    // print({
    //   'error_message': error.message,
    //   'code': error.code,
    //   'status_code': error.statusCode
    // });

    if (error is AuthException) {
      apiErrorModel = _handleAuthError(error);
    } else if (error is PostgrestException) {
      apiErrorModel = _handlePostgrestError(error);
    } else if (error is StorageException) {
      apiErrorModel = _handleStorageError(error);
    } else {
      print(error);
      apiErrorModel = ApiErrorModel(
        message: 'Failure',
        code: 0,
      );
    }
  }

  ApiErrorModel _handleAuthError(AuthException error) {
    print({
      'error_message': error.message,
      'code': error.code,
      'status_code': error.statusCode
    });
    return ApiErrorModel(
      code: ResponseCode.UNAUTORISED,
      message: error.message,
    );
  }

  ApiErrorModel _handlePostgrestError(PostgrestException error) {
    return ApiErrorModel(
      code: error.code == 'PGRST116'
          ? ResponseCode.NOT_FOUND
          : ResponseCode.BAD_REQUEST,
      message: error.message,
    );
  }

  ApiErrorModel _handleStorageError(StorageException error) {
    return ApiErrorModel(
      code: ResponseCode.BAD_REQUEST,
      message: error.message,
    );
  }
}
