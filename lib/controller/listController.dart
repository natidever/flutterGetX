import 'package:get/get.dart';

class ListController extends GetxController {
  RxList _list = [].obs;
  RxList get getList => _list;
  void addValues(int x) {
    _list.add(x);
    update();
    print(_list);
  }
}
