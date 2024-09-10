import 'package:app_01_todo_app/widgets/app_commmon.dart';
import 'package:flutter/material.dart';

class DashbordTaskGroupCard extends StatelessWidget {
  const DashbordTaskGroupCard({super.key, required this.colorbase});
  final Color colorbase;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 5, top: 5, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20)
        ],
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          hori_space2,
          Container(
            padding:const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: (colorbase as MaterialColor).shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.work,
              size: 20,
              color: (colorbase as MaterialColor).shade500,
            ),
          ),
          hori_space2,
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Work Group Name",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              vert_space,
              Text(
                "Work Group Name",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          )),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(
                  color: (colorbase as MaterialColor).shade500,
                  value: 0.6,
                  strokeCap: StrokeCap.round,
                  backgroundColor: (colorbase as MaterialColor).shade100,
                ),
              ),
              Text(
                "80%",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              )
            ],
          ),
          hori_space2
        ],
      ),
    );
  }
}
