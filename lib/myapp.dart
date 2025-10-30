import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:navegacion_2_0/config/theme/app_theme.dart';
import 'package:navegacion_2_0/core/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,

      debugShowCheckedModeBanner: false,

      routerConfig: appRouter,
    );
  }
}
