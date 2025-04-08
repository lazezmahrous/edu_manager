import 'package:supabase_flutter/supabase_flutter.dart';
class SupabaseDatabase {
  Future<void> initSupabase() async {
    await Supabase.initialize(
      url: 'https://xyzcompany.supabase.co',
      anonKey: 'public-anon-key',
    );

    await Supabase.initialize(
      url: 'SUPABASE_URL',
      anonKey: 'SUPABASE_ANON_KEY',
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
}
