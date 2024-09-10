import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeModeSwitch extends StatelessWidget {
  const ThemeModeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          final mode = Theme.of(context).brightness == Brightness.light
              ? ThemeMode.dark
              : ThemeMode.light;
          Get.changeThemeMode(mode);
        },
        child: Icon(
          Theme.of(context).brightness != Brightness.light
              ? Icons.light_mode
              : Icons.dark_mode,
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.grey
              : Colors.amber,
        ),
      ),
    );

    // Switch(
    //     value: Theme.of(context).brightness == Brightness.light,
    //     onChanged: (s) {
    //       final mode = Theme.of(context).brightness == Brightness.light
    //           ? ThemeMode.dark
    //           : ThemeMode.light;
    //       Get.changeThemeMode(mode);
    // });
  }
}
