import 'package:app_01_todo_app/controllers/mainController.dart';
import 'package:app_01_todo_app/screens/add_Project_Screen.dart';
import 'package:app_01_todo_app/screens/calender_task_view.dart';
import 'package:app_01_todo_app/screens/home_screen.dart';
import 'package:app_01_todo_app/screens/profile_Screen.dart';
import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:app_01_todo_app/utils/app_contrants.dart';
import 'package:app_01_todo_app/widgets/backgrounds/focused_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

class DashboardWrapper extends StatelessWidget {
  DashboardWrapper({super.key});
  final mainController = Get.find<Maincontroller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const FocusedBackground(),
          Container(
            width: Get.width,
            height: Get.height,
            child: PageView(controller: mainController. pageController, children: [
              HomeScreen(),
              CalenderTaskView(),
              ProfileScreen()
            ]),
          )
        ],
      ),
      bottomNavigationBar: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: BottomNavigationBar(
          // currentIndex: (mainController.pageController.page ?? 1).toInt(),
          onTap: (value) {
            if (value != 3) {
            mainController.  pageController.animateToPage(value,
                  duration: Durations.medium1, curve: Curves.easeInCubic);
            } else {
              // showCupertinoModalPopup(
              //     context: context,
              //     builder: (_) => Scaffold(
              //           body: Stack(
              //             children: [
              //               const FocusedBackground(),
              //               Container(
              //                 width: Get.width,
              //                 height: Get.height,
              //                 child: const AddProjectScreen(),
              //               )
              //             ],
              //           ),
              //         ));
              Get.to(() => Scaffold(
                    body: Stack(
                      children: [
                        const FocusedBackground(),
                        Container(
                          width: Get.width,
                          height: Get.height,
                          child: const AddProjectScreen(),
                        )
                      ],
                    ),
                  ));
            }
          },
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: AppColors().col1,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(TablerIcons.home_2),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(TablerIcons.calendar_due),
              label: 'Calender',
            ),
            const BottomNavigationBarItem(
              icon: Icon(TablerIcons.user),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const SizedBox(),
                  Positioned(
                      top: -40,
                      left: -20,
                      child: FloatingActionButton(
                          heroTag: "mainbutton",
                          shape: const CircleBorder(),
                          backgroundColor: AppColors().col1,
                          onPressed: () {
                            Get.to(
                                () => Scaffold(
                                      body: Stack(
                                        children: [
                                          const FocusedBackground(),
                                          Container(
                                            width: Get.width,
                                            height: Get.height,
                                            child: const AddProjectScreen(),
                                          )
                                        ],
                                      ),
                                    ),
                                duration: Durations.medium4);
                            // showCupertinoModalPopup(
                            //     context: context,
                            //     builder: (_) => Scaffold(
                            //           body: Stack(
                            //             children: [
                            //               const FocusedBackground(),
                            //               Container(
                            //                 width: Get.width,
                            //                 height: Get.height,
                            //                 child: const AddProjectScreen(),
                            //               )
                            //             ],
                            //           ),
                            //         ));
                          },
                          child: const Icon(
                            TablerIcons.plus,
                            color: Colors.white,
                          ))
                      //  Container(
                      //     padding: EdgeInsets.all(8),
                      //     decoration: BoxDecoration(
                      //       color: AppColors().col1,
                      //       shape: BoxShape.circle,
                      //     ),
                      //     child: Icon(
                      //       TablerIcons.plus,
                      //       color: Colors.white,
                      //     )),
                      ),
                ],
              ),
              label: 'Help',
            ),
          ],
        ),
      ),
    );
  }
}
