import 'package:flutter/widgets.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TasbihController extends GetxController {
  var counter = 0.obs;
  TextEditingController editingController = TextEditingController();
  RxString controllerText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    controllerText.value = editingController.text;
  }

  void increment() {
    if (counter.toString() == controllerText) {
      counter == counter;
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
