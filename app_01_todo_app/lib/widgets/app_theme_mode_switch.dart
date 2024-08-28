import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeModeSwitch extends StatelessWidget {
  const ThemeModeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: Theme.of(context).brightness == Brightness.light,
        onChanged: (s) {
          final mode = Theme.of(context).brightness == Brightness.light
              ? ThemeMode.dark
              : ThemeMode.light;
          Get.changeThemeMode(mode);
        });
  }
}
