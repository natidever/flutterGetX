import 'package:get/get.dart';
import 'package:getx/controller/listController.dart';
import 'package:getx/controller/tabContoller.dart';

Future<void> init() async {
  TabControllers controller = Get.put(TabControllers());
  ListController listController = Get.put(ListController());
}
