import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:app_01_todo_app/widgets/app_commmon.dart';
import 'package:app_01_todo_app/widgets/backgrounds/focused_background.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tabler_icons/tabler_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        FocusedBackground(),
        SafeArea(
            child: Column(
          children: [
            appbar(context),
            vert_space2,
            Container(
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
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors().col1),
                          ),
                        ),
                      ),
                      vert_space2,
                    ],
                  )),
                  Expanded(
                      child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.white70,
                      value: 0.9,
                    ),
                  )),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.white38),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                  hori_space1
                ],
              ),
            )
          ],
        ))
      ],
    ));
  }

  Widget appbar(BuildContext context) {
    return Row(
      children: [
        hori_space1,
        CircleAvatar(
          radius: 25,
          backgroundImage: CachedNetworkImageProvider(
              "https://avatar.iran.liara.run/public/boy"),
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
        Icon(TablerIcons.bell_filled)
      ],
    );
  }
}
