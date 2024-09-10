import 'dart:math';

import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:app_01_todo_app/widgets/app_commmon.dart';
import 'package:flutter/material.dart';

class dashbordCardTemplate extends StatelessWidget {
  dashbordCardTemplate({
    super.key,
    required this.backgroundColor,
  });
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 200,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: (backgroundColor as MaterialColor).shade100.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vert_space,
          Row(
            children: [
              hori_space1,
              Text(
                "Project Tag",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Spacer(),
              Builder(builder: (context) {
                final color = AppColors().CardSoftColor[
                    Random().nextInt(AppColors().CardSoftColor.length)];
                return Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: backgroundColor
                          .withOpacity(0.1)
                          .withRed(100)
                          .withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.work,
                    size: 18,
                    color: backgroundColor.withRed(100),
                  ),
                );
              }),
              hori_space1
            ],
          ),
          vert_space,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Task Title goes here goes 2 Lines here",
                maxLines: 2,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          vert_space,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: LinearProgressIndicator(
              value: 0.5,
              minHeight: 7,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.circular(10),
              color: backgroundColor,
            ),
          ),
          vert_space2,
        ],
      ),
    );
  }
}
