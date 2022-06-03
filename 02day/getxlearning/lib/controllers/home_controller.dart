import 'package:get/get.dart';

class HomeController extends GetxController {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  void increment() {    
    print("_counter: $_counter");
    _counter++;
    print("_counter: $_counter");
    update();
  }
}
