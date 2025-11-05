import 'package:get/get.dart';
import '../../data/models/testimonial_model.dart';

class TestimonialsController extends GetxController {
  final testimonialList = <TestimonialModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchTestimonials();
  }

  void fetchTestimonials() {
    var dummies = [
      TestimonialModel(
        id: 't1',
        name: 'Athallah',
        review:
            'Kopinya mantap! Aroma dan rasanya pas. Pengiriman cepat dan packing aman. Recommended seller!',
        imageUrl: 'assets/images/user1.jpg',
        rating: 5,
      ),
      TestimonialModel(
        id: 't2',
        name: 'Daan Nabil',
        review:
            'Keripik tempenya unik, renyah banget. Anak saya suka. Pasti order lagi.',
        imageUrl: 'assets/images/user2.jpg',
        rating: 4.5,
      ),
    ];
    testimonialList.assignAll(dummies);
  }
}
