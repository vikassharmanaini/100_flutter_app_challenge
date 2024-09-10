import 'dart:math';

import 'package:app_01_todo_app/controllers/mainController.dart';
import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:app_01_todo_app/utils/app_contrants.dart';
import 'package:app_01_todo_app/widgets/app_commmon.dart';
import 'package:app_01_todo_app/widgets/app_theme_mode_switch.dart';
import 'package:app_01_todo_app/widgets/backgrounds/focused_background.dart';
import 'package:app_01_todo_app/widgets/dashbord_card_template.dart';
import 'package:app_01_todo_app/widgets/dashbord_task_group_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final mainController = Get.find<Maincontroller>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vert_space2,
        appBar(context),
        vert_space1,
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                vert_space1,
                progreesCard(context),
                vert_space2,
                progessWidget(context),
                vert_space2,
                taskgrouplist(context)
              ],
            ),
          ),
        )
      ],
    ));
  }

  Column taskgrouplist(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Task Groups",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        AnimationLimiter(
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                itemBuilder: (_, i) => AnimationConfiguration.staggeredList(
                      position: i,
                      duration: const Duration(milliseconds: 975),
                      child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: DashbordTaskGroupCard(
                              colorbase: AppColors().CardSoftColor[Random()
                                  .nextInt(AppColors().CardSoftColor.length)],
                            ),
                          )),
                    )))
      ],
    );
  }

  Widget progessWidget(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "In Progress",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        vert_space1,
        // Progress
        SizedBox(
          height: 120,
          child: AnimationLimiter(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                padding: const EdgeInsets.symmetric(horizontal: 20)
                    .copyWith(right: 10),
                itemBuilder: (_, i) => AnimationConfiguration.staggeredList(
                    position: i,
                    duration: const Duration(milliseconds: 800),
                    child: SlideAnimation(
                        horizontalOffset: 50.0,
                        child: FadeInAnimation(
                          child: dashbordCardTemplate(
                            backgroundColor: AppColors().CardSoftColor[Random()
                                .nextInt(AppColors().CardSoftColor.length)],
                          ),
                        )))),
          ),
        )
      ],
    );
  }

  Widget progreesCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors().col1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          hori_space2,
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vert_space2,
              Text(
                "Your today's task almost done",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white),
              ),
              vert_space2,
              Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 30,
                width: 100,
                child: Center(
                  child: Text(
                    "View Task",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold, color: AppColors().col1),
                  ),
                ),
              ),
              vert_space2,
            ],
          )),
          Expanded(
              child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                const SizedBox(
                  height: 50,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: CircularProgressIndicator(
                      strokeWidth: 4,
                      strokeCap: StrokeCap.round,
                      color: Colors.white70,
                      value: 0.9,
                    ),
                  ),
                ),
                Text(
                  "80%",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                )
              ],
            ),
          )),
          Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white38),
                child: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
              vert_space2,
              vert_space2,
            ],
          ),
          hori_space1
        ],
      ),
    );
  }

  Widget appBar(BuildContext context) {
    return Row(
      children: [
        hori_space1,
        GestureDetector(
          onTap: () {
           mainController. pageController.animateToPage(2,
                duration: Durations.medium4, curve: Curves.decelerate);
          },
          child: Hero(
            tag: "profileimg",
            child: const CircleAvatar(
              radius: 25,
              backgroundImage: CachedNetworkImageProvider(
                  "https://avatar.iran.liara.run/public/boy"),
            ),
          ),
        ),
        hori_space2,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "Unkwone",
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
        ),
        const ThemeModeSwitch(),
        const Icon(TablerIcons.bell_filled),
        hori_space2
      ],
    );
  }
}
