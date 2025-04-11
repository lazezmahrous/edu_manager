import 'package:supabase_flutter/supabase_flutter.dart';

import '../constans/app_secure_data.dart';

class SupabaseDatabase {
  Future<void> initSupabase() async {
    await Supabase.initialize(
      url: AppSecurreData.supabaseUrl,
      anonKey: AppSecurreData.supabaseAnonKey,
      authOptions: const FlutterAuthClientOptions(
        authFlowType: AuthFlowType.pkce,
      ),
      realtimeClientOptions: const RealtimeClientOptions(
        logLevel: RealtimeLogLevel.info,
      ),
      storageOptions: const StorageClientOptions(
        retryAttempts: 10,
      ),
    );
  }

  // SignIn With Magic Link
  Future<void> signInWithMagicLink({required String email}) async {
    final ref = Supabase.instance;
    await ref.client.auth.signInWithOtp(
      emailRedirectTo: 'edumanager://signin_with_magic_link',
      email: email,
    );
  }
}
