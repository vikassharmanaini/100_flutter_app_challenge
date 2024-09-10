import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:app_01_todo_app/widgets/app_commmon.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({super.key, required this.bgColors});
  final Color bgColors;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vert_space1,
          Row(
            children: [
              hori_space1,
              Expanded(
                  child: Text(
                "Project Name Part Name",
                style: Theme.of(context).textTheme.bodySmall,
              )),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: (bgColors as MaterialColor).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.work_rounded,
                  size: 15,
                  color: (bgColors as MaterialColor),
                ),
              ),
              hori_space1
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Project Task Name",
              maxLines: 2,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          vert_space,
          Row(
            children: [
              hori_space1,
              Icon(
                Icons.watch_later,
                color: AppColors().col1.withOpacity(0.6),
                size: 17,
              ),
              hori_space,
              Text(
                "10:10 AM",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: AppColors().col1.withOpacity(0.6)),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: bgColors.withOpacity(0.2),
                ),
                child: Text(
                  "Status",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: bgColors),
                ),
              ),
              hori_space1
            ],
          ),
          vert_space1,
        ],
      ),
    );
  }
}
