import 'package:app_01_todo_app/screens/calender_task_view.dart';
import 'package:app_01_todo_app/screens/home_screen.dart';
import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:app_01_todo_app/widgets/backgrounds/focused_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

class DashboardWrapper extends StatelessWidget {
  const DashboardWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FocusedBackground(),
          Container(
            width: Get.width,
            height: Get.height,
            child: PageView(children: [
              HomeScreen(),
              CalenderTaskView(),
              Container(),
              Container(),
            ]),
          )
        ],
      ),
      bottomNavigationBar: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: AppColors().col1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(TablerIcons.home_2),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(TablerIcons.calendar_due),
              label: 'Calender',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(),
                  Positioned(
                    top: -40,
                    left: -20,
                    child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors().col1,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          TablerIcons.plus,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              label: 'Help',
            ),
            BottomNavigationBarItem(
              icon: Icon(TablerIcons.package),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(TablerIcons.user),
              label: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
