import 'package:get/get.dart';
import '../../data/models/product_model.dart';

class ProductDetailController extends GetxController {
  final product = Rxn<ProductModel>(); // Bisa null

  @override
  void onInit() {
    super.onInit();
    // Ambil data produk dari argumen navigasi
    final arguments = Get.arguments;
    if (arguments != null && arguments is ProductModel) {
      product.value = arguments;
    }
  }
}
