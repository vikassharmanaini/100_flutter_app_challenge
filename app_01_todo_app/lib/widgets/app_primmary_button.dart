import 'package:app_01_todo_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class app_primmary_button extends StatelessWidget {
  const app_primmary_button({super.key, this.onTap, this.label});
  final onTap;
  final label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors().col1),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
            child: Text(
          label ?? "Let's Start",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white),
        )),
      ),
    );
  }
}
