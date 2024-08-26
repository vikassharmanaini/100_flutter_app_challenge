import 'package:app_01_todo_app/utils/app_routes.dart';
import 'package:app_01_todo_app/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: AppDarkTheme,
      theme: AppThemeData,
      getPages: AppRoutes().page,
    );
  }
}
