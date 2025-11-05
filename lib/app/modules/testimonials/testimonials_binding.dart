import 'package:get/get.dart';
import 'testimonials_controller.dart';

class TestimonialsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestimonialsController>(() => TestimonialsController());
  }
}
