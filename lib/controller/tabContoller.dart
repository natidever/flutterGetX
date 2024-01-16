import 'dart:ffi';

import 'package:get/get.dart';

class TabControllers extends GetxController {
  int _x = 0;
  int? get getX => _x;
  RxInt _y = 0.obs;
  int get getY => _y.value;
  RxInt sum = 0.obs;

  void sumXY() {
    sum.value = _x + _y.value;
  }

  increaseX() {
    _x = _x + 1;
    update();
  }

  increasey() {
    _y.value = _y.value + 1;
    update();
  }
}
