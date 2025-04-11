import 'package:edu_manager/core/routing/app_router.dart';
import 'package:edu_manager/core/services/supabase_database.dart';
import 'package:edu_manager/edu_manager_app.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';
import 'core/services/deep_links.dart';

void main() async {
  await setupGetit();
  await SupabaseDatabase().initSupabase();
  DeepLinksManager.handleDeepLink();
  AppRouter appRouter = AppRouter();
  runApp(EduManagerApp(
    appRouter: appRouter,
  ));
}
