import 'package:app_01_todo_app/controllers/mainController.dart';
import 'package:get/get.dart';

class bindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<Maincontroller>(Maincontroller());
  }
  
}