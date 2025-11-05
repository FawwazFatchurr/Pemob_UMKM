import 'package:get/get.dart';
import '../../data/models/product_model.dart';

class HomeController extends GetxController {
  final productList = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() {
    var dummyProducts = [
      ProductModel(
        id: '1',
        name: 'Kopi Gayo Premium',
        description:
            'Kopi arabika asli dari dataran tinggi Gayo, Aceh. Ditanam secara organik dan diproses dengan metode honey process.',
        price: 120000,
        imageUrl: 'assets/images/kopi.jpg',
      ),
      ProductModel(
        id: '2',
        name: 'Keripik Tempe Sagu',
        description:
            'Renyah, gurih, dan bebas gluten. Dibuat dari tempe segar pilihan dan tepung sagu berkualitas.',
        price: 25000,
        imageUrl: 'assets/images/keripik.jpg',
      ),
      ProductModel(
        id: '3',
        name: 'Batik Tulis Madura',
        description:
            'Kain batik tulis dengan motif khas Pamekasan. Pewarnaan alami menggunakan bahan-bahan dari alam.',
        price: 450000,
        imageUrl: 'assets/images/batik.jpg',
      ),

      ProductModel(
        id: '4',
        name: 'Madu Hutan Sumbawa',
        description:
            'Madu murni asli dari lebah liar Apis Dorsata di hutan Sumbawa. Dipanen secara lestari.',
        price: 150000,
        imageUrl: 'assets/images/madu.jpg',
      ),
      ProductModel(
        id: '5',
        name: 'Tenun Ikat Sumba',
        description:
            'Kain tenun ikat asli Sumba, dibuat manual oleh pengrajin lokal dengan pewarna alam. Memiliki motif kuda yang khas.',
        price: 1200000,
        imageUrl: 'assets/images/tenun.jpeg',
      ),
      ProductModel(
        id: '6',
        name: 'Sambal Ikan Tuna',
        description:
            'Sambal pedas gurih khas rasa tuna yang terbuat dari ikan tuna pilihan dan cabai segar.',
        price: 45000,
        imageUrl: 'assets/images/sambal.jpeg',
      ),
    ];

    productList.assignAll(dummyProducts);
  }
}
