import 'package:edu_manager/core/routing/app_router.dart';
import 'package:edu_manager/edu_manager_app.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  await setupGetit();
  AppRouter appRouter = AppRouter();
  runApp(EduManagerApp(
    appRouter: appRouter,
  ));
}
