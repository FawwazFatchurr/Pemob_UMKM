import 'package:get/get.dart';

// Impor semua view dan binding
import '../modules/home/home_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/product_detail/product_detail_view.dart';
import '../modules/product_detail/product_detail_binding.dart';
import '../modules/testimonials/testimonials_view.dart';
import '../modules/testimonials/testimonials_binding.dart';
import '../modules/about/about_view.dart';
import '../modules/about/about_binding.dart';
import '../modules/contact/contact_view.dart';
import '../modules/contact/contact_binding.dart';

part 'app_routes.dart'; // Impor file rute

class AppPages {
  // Rute awal saat aplikasi dibuka
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
      name: Routes.PRODUCT_DETAIL,
      page: () => ProductDetailView(),
      binding: ProductDetailBinding(),
      transition: Transition.rightToLeft, // Contoh transisi
    ),
    GetPage(
      name: Routes.TESTIMONIALS,
      page: () => TestimonialsView(),
      binding: TestimonialsBinding(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: Routes.CONTACT,
      page: () => ContactView(),
      binding: ContactBinding(),
    ),
  ];
}
