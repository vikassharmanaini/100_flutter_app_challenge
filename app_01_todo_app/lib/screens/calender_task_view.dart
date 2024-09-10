import 'dart:math';

import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:app_01_todo_app/utils/app_contrants.dart';
import 'package:app_01_todo_app/utils/app_routes.dart';
import 'package:app_01_todo_app/widgets/app_commmon.dart';
import 'package:app_01_todo_app/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class CalenderTaskView extends StatelessWidget {
  const CalenderTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          vert_space1,
          Text(
            "Today's Task",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          vert_space2,
          vert_space,
          taskcalender(context),
          vert_space2,
          vert_space2,
          task_status(context),
          vert_space2,
          Expanded(
              child: ListView.builder(
                  clipBehavior: Clip.none,
                  itemCount: 10,
                  itemBuilder: (_, i) => TaskTile(
                        bgColors: AppColors().CardSoftColor[
                            Random().nextInt(AppColors().CardSoftColor.length)],
                      )))
        ],
      ),
    );
  }

  Container task_status(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.builder(
          clipBehavior: Clip.none,
          itemCount: TaskStatus.values.length + 1,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemBuilder: (_, i) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: AppColors().col1.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    (i == 0
                        ? "All"
                        : (TaskStatus.values
                                .elementAt(i - 1)
                                .name
                                .toString()
                                .replaceAll('_', ' ') as String)
                            .toUpperCase()),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors().col1, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
    );
  }

  Widget taskcalender(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          clipBehavior: Clip.none,
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, i) => Container(
                width: 70,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20,
                    )
                  ],
                  color: Theme.of(context).cardColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "MAY",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      "Da",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "WER",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              )),
    );
  }
}
