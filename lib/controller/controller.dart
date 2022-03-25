import 'package:flutter/widgets.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:ramadanapp/screens/tasbih/tasbih.dart';

class Controller extends GetxController {
  var counter = RxInt(0);
  TextEditingController editingController = TextEditingController();
  RxString controllerText = ''.obs;

  @override
  void initState() {
    super.onInit();
    controllerText.value = editingController.text;
  }

  void increment() {
    if (counter == controllerText) {
      counter = counter;
      update();
    } else if (controllerText.isEmpty || counter != controllerText) {
      counter++;
      update();
    }
  }

  reset() {
    counter.value = 0;
  }
}
