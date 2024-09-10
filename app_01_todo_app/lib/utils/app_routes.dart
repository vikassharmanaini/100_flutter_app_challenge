import 'package:app_01_todo_app/screens/dashboardWrapper.dart';
import 'package:app_01_todo_app/screens/home_screen.dart';
import 'package:app_01_todo_app/screens/start_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String getStart = "/start";
  static String home = "/";
  List<GetPage> page = [
    GetPage(name: getStart, page: () => const StartScreen()),
    GetPage(name: home, page: () => DashboardWrapper())
  ];
}
