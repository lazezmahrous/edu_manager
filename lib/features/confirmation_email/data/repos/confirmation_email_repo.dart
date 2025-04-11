import 'package:edu_manager/core/networking/api_result.dart';
import 'package:edu_manager/core/services/supabase_database.dart';

import '../../../../core/networking/supabase_error_handler.dart';
import '../networking/confirmation_email_api_service.dart';

class ConfirmationEmailRepo implements ConfirmationEmailApiService {
  final SupabaseDatabase _supabaseRef;
  ConfirmationEmailRepo(this._supabaseRef);

  @override
  Future<ApiResult<void>> sendConfirmationEmail(String email) async {
    try {
      final response = await _supabaseRef.signInWithMagicLink(email: email);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(SupabaseErrorHandler.handle(error));
    }
  }
}
