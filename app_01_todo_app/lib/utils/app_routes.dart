import 'package:app_01_todo_app/screens/home_screen.dart';
import 'package:app_01_todo_app/screens/start_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String home = "/";
  List<GetPage> page = [GetPage(name: home, page: () => StartScreen())];
}
