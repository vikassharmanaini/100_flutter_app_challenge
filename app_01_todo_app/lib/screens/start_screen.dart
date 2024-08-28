import 'package:app_01_todo_app/utils/app_assets.dart';
import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:app_01_todo_app/utils/app_routes.dart';
import 'package:app_01_todo_app/widgets/app_commmon.dart';
import 'package:app_01_todo_app/widgets/app_primmary_button.dart';
import 'package:app_01_todo_app/widgets/backgrounds/focused_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FocusedBackground(),
          Column(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(child: Image.asset(AppAssets.girl_Start_picture)),
                    Positioned(
                        left: 70,
                        top: 150,
                        child: Image.asset(AppAssets.start_base)),
                    Positioned(
                        left: 50,
                        bottom: 150,
                        child: Image.asset(AppAssets.start_watch)),
                    Positioned(
                        right: 70, child: Image.asset(AppAssets.start_cal)),
                  ],
                ),
              ),
              vert_space2,
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 220,
                    child: Text(
                      "Task Manegement & To-Do List",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  vert_space2,
                  SizedBox(
                    width: 280,
                    child: Text(
                        "This productive tool is designed to help you better manage your task.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge),
                  ),
                  vert_space2,
                  vert_space1,
                  app_primmary_button(
                    onTap: () {
                      Get.toNamed(AppRoutes.home);
                    },
                  ),
                  vert_space2,
                  vert_space2,
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
