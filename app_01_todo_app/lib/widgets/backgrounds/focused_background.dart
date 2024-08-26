import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FocusedBackground extends StatelessWidget {
  const FocusedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
          ),
          spots(AppColors().col2..withOpacity(0.01)),
          Positioned(
              right: 0,
              top: Get.height * 0.3,
              child: spots(AppColors().col1.withOpacity(0.4))),
          Positioned(
              left: 100,
              top: Get.height * 0.65,
              child: spots(AppColors().col2.withOpacity(0.2))),
        ],
      ),
    );
  }

  Widget spots(color) {
    return Container(
      width: 0,
      height: 0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: color, blurRadius: 500, spreadRadius: 100)
        ],
      ),
    );
  }
}
