// ignore_for_file: avoid_print

import 'package:get/get.dart';

class HomeController extends GetxController {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  @override
  void onInit() {    
    super.onInit();
    print("HomeController:onInit same as initState in Stateful widget");
  }

  @override
  void onReady() {    
    super.onReady();
    print("HomeController:onReady... here we can navigate, show snackbars and so on");
  }

  @override
  void onClose() {    
    super.onClose();
    print("HomeController:onClose... dispose resources");
  }

  void increment() {    
    print("_counter: $_counter");
    _counter++;
    print("_counter: $_counter");
    update();
  }
}
