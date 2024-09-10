import 'package:app_01_todo_app/controllers/Bindings.dart';
import 'package:app_01_todo_app/utils/app_routes.dart';
import 'package:app_01_todo_app/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todo App',
      themeMode: ThemeMode.light,
      darkTheme: AppDarkTheme,
      theme: AppThemeData,
      initialBinding:bindings(),
      onGenerateRoute: (settings) {
        return MaterialWithModalsPageRoute(
            settings: settings, builder: (context) => Container());
      },
      initialRoute: AppRoutes.getStart,
      getPages: AppRoutes().page,
      defaultTransition: Transition.cupertino,
    );
  }
}
