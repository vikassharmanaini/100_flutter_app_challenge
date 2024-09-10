import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:app_01_todo_app/widgets/app_commmon.dart';
import 'package:app_01_todo_app/widgets/app_primmary_button.dart';
import 'package:app_01_todo_app/widgets/backgrounds/focused_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProjectScreen extends StatelessWidget {
  const AddProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Hero(
        tag: "mainbutton",
        child: Column(
          children: [
            vert_space1,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.clear),
                  ),
                ),
                Text(
                  "Add Project  ",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                hori_space2
              ],
            ),
            vert_space2,
            vert_space2,
            //Task Group Selection
            Card(
                elevation: 10,
                shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(children: [
                    hori_space1,
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: (AppColors().CardSoftColor[2] as MaterialColor)
                            .shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.work,
                        size: 20,
                        color: (AppColors().CardSoftColor[2] as MaterialColor)
                            .shade500,
                      ),
                    ),
                    hori_space2,
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Task Group"),
                        Text(
                          "Selected Group",
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    )),
                    Transform.rotate(
                        angle: 1.5,
                        child: const Icon(Icons.arrow_forward_ios_rounded)),
                    hori_space1,
                  ]),
                )),

            vert_space2,
            vert_space1,
            Card(
                elevation: 10,
                shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(children: [
                    hori_space2,
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Project Name"),
                        Text(
                          "Selected Group",
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    )),
                    hori_space1,
                  ]),
                )),
            vert_space2,
            vert_space1,
            Card(
                elevation: 10,
                shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(children: [
                    hori_space2,
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Description"),
                        CupertinoTextField.borderless(
                          placeholder: "Enter Description",
                          maxLines: 5,
                          style: Theme.of(context).textTheme.titleSmall,
                        )
                      ],
                    )),
                    hori_space1,
                  ]),
                )),
            vert_space2,
            vert_space,
            Card(
                elevation: 10,
                shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(children: [
                    hori_space1,
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColors().col1.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.calendar_month_rounded,
                        size: 20,
                        color: AppColors().col1,
                      ),
                    ),
                    hori_space2,
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Start Date"),
                        Text(
                          "01 May, 2022",
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    )),
                    Transform.rotate(
                        angle: 1.5,
                        child: const Icon(Icons.arrow_forward_ios_rounded)),
                    hori_space1,
                  ]),
                )),
            vert_space2,
            vert_space,
            Card(
                elevation: 10,
                shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(children: [
                    hori_space1,
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColors().col1.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.calendar_month_rounded,
                        size: 20,
                        color: AppColors().col1,
                      ),
                    ),
                    hori_space2,
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("End Date"),
                        Text(
                          "01 May, 2022",
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    )),
                    Transform.rotate(
                        angle: 1.5,
                        child: const Icon(Icons.arrow_forward_ios_rounded)),
                    hori_space1,
                  ]),
                )),
            vert_space2,
            vert_space,
            const app_primmary_button(
              label: "Add Project",
            )
          ],
        ),
      ),
    );
  }
}
