import 'package:get/get.dart';

class MyController extends GetxController {
  var chair = 0.obs;
  var sofaa = 0.obs;
  var bed = 0.obs;
  var arm = 0.obs;
  incrementChair() {
    chair.value++;
  }

  decrementChair() {
    if (chair.value <= 0) {
      Get.snackbar(
        "Chair",
        "Can not be less than Zero",
        barBlur: 30,
        isDismissible: true,
        duration: const Duration(seconds: 2),
      );
    } else {
      chair.value--;
    }
  }

  incrementSofaa() {
    sofaa.value++;
  }

  decrementSofaa() {
    if (sofaa.value <= 0) {
      Get.snackbar(
        "Sofaa",
        "Can not be less than Zero",
        barBlur: 30,
        isDismissible: true,
        duration: const Duration(seconds: 2),
      );
    } else {
      sofaa.value--;
    }
  }

  incrementBed() {
    bed.value++;
  }

  decrementBed() {
    if (bed.value <= 0) {
      Get.snackbar(
        "Bed",
        "Can not be less than Zero",
        barBlur: 30,
        isDismissible: true,
        duration: const Duration(seconds: 2),
      );
    } else {
      bed.value--;
    }
  }

  incrementArm() {
    arm.value++;
  }

  decrementArm() {
    if (arm.value <= 0) {
      Get.snackbar(
        "Arm Chair",
        "Can not be less than Zero",
        barBlur: 30,
        isDismissible: true,
        duration: const Duration(seconds: 2),
      );
    } else {
      arm.value--;
    }
  }
}
