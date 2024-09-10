import 'dart:math';

import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:app_01_todo_app/widgets/app_commmon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        vert_space1,
        Text(
          "Profile",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        vert_space2,
        Card(
          elevation: 5,
          shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
          shape: const CircleBorder(),
          child: const Hero(
            tag: "profileimg",
            child: const CircleAvatar(
              radius: 60,
              backgroundImage: CachedNetworkImageProvider(
                  "https://avatar.iran.liara.run/public/boy"),
            ),
          ),
        ),
        vert_space2,
        Card(
            elevation: 10,
            shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Builder(builder: (context) {
                final color = AppColors().CardSoftColor[
                    Random().nextInt(AppColors().CardSoftColor.length - 1)];
                return Row(children: [
                  hori_space2,
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(
                        TablerIcons.user,
                        color: color,
                      ),
                    ),
                  ),
                  hori_space2,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      CupertinoTextField.borderless(
                        placeholder: "Enter Name",
                        maxLines: 1,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  )),
                  hori_space1,
                ]);
              }),
            )),
        vert_space2,
        Card(
            elevation: 10,
            shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Builder(builder: (context) {
                final color = AppColors().CardSoftColor[
                    Random().nextInt(AppColors().CardSoftColor.length - 1)];
                return Row(children: [
                  hori_space2,
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(
                        TablerIcons.mail,
                        color: color,
                      ),
                    ),
                  ),
                  hori_space2,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      CupertinoTextField.borderless(
                        placeholder: "Enter Emails",
                        maxLines: 1,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  )),
                  hori_space1,
                ]);
              }),
            )),
        vert_space2,
        Card(
            elevation: 10,
            shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Builder(builder: (context) {
                final color = AppColors().CardSoftColor[
                    Random().nextInt(AppColors().CardSoftColor.length - 1)];
                return Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      hori_space2,
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: color.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Icon(
                            TablerIcons.settings,
                            color: color,
                          ),
                        ),
                      ),
                      hori_space2,
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Settings",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          CupertinoListTile(
                            title: Text("Show Notification",
                                style: Theme.of(context).textTheme.bodyMedium),
                            trailing: CupertinoSwitch(
                                value: false, onChanged: (s) {}),
                          ),
                          const Divider(
                            height: 1,
                          ),
                          CupertinoListTile(
                            title: Text("Show Notification",
                                style: Theme.of(context).textTheme.bodyMedium),
                            trailing: CupertinoSwitch(
                                value: false, onChanged: (s) {}),
                          ),
                          const Divider(
                            height: 1,
                          ),
                          CupertinoListTile(
                            title: Text("Show Notification",
                                style: Theme.of(context).textTheme.bodyMedium),
                            trailing: CupertinoSwitch(
                                value: false, onChanged: (s) {}),
                          ),
                        ],
                      )),
                      hori_space1,
                    ]);
              }),
            )),
        vert_space2,
        Card(
            elevation: 10,
            shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Builder(builder: (context) {
                final color = AppColors().CardSoftColor[
                    Random().nextInt(AppColors().CardSoftColor.length - 1)];
                return Row(children: [
                  hori_space2,
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.policy_outlined,
                        color: color,
                      ),
                    ),
                  ),
                  hori_space2,
                  const Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ],
                  )),
                  hori_space1,
                ]);
              }),
            )),
        vert_space2,
        Card(
            elevation: 10,
            shadowColor: Theme.of(context).shadowColor.withOpacity(0.7),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Builder(builder: (context) {
                final color = AppColors().CardSoftColor[
                    Random().nextInt(AppColors().CardSoftColor.length - 1)];
                return Row(children: [
                  hori_space2,
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.policy_outlined,
                        color: color,
                      ),
                    ),
                  ),
                  hori_space2,
                  const Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delete all data",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ],
                  )),
                  hori_space1,
                ]);
              }),
            )),
      ]),
    );
  }
}
