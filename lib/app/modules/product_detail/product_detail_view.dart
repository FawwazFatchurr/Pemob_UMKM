import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        if (controller.product.value == null) {
          return Scaffold(
            appBar: AppBar(title: Text('Detail Produk'), elevation: 0),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, size: 80, color: Colors.grey[400]),
                  SizedBox(height: 16),
                  Text(
                    "Produk tidak ditemukan",
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          );
        }

        final product = controller.product.value!;

        return CustomScrollView(
          slivers: [
            // App Bar dengan gambar produk
            SliverAppBar(
              expandedHeight: 350,
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.indigo,
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: 'product-${product.name}',
                  child: Image.asset(
                    product.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[200],
                        child: Center(
                          child: Icon(
                            Icons.broken_image,
                            size: 100,
                            color: Colors.grey[400],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),

            // Konten detail produk
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nama Produk
                      Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                          height: 1.3,
                        ),
                      ),
                      SizedBox(height: 16),

                      // Harga dengan background
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.indigo, Colors.indigoAccent],
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.indigo.withOpacity(0.3),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.local_offer,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Rp ${product.price.toStringAsFixed(0)}',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 32),

                      // Divider dengan style
                      Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.grey[300]!,
                              Colors.grey[100]!,
                              Colors.grey[300]!,
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 24),

                      // Header Deskripsi
                      Row(
                        children: [
                          Container(
                            width: 4,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Deskripsi Produk',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 16),

                      // Deskripsi
                      Text(
                        product.description,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.8,
                          color: Colors.grey[700],
                          letterSpacing: 0.3,
                        ),
                        textAlign: TextAlign.justify,
                      ),

                      SizedBox(height: 32),

                      // Tombol Aksi (opsional)
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                // Aksi beli/pesan
                                Get.snackbar(
                                  'Info',
                                  'Fitur pemesanan segera hadir!',
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: Colors.indigo,
                                  colorText: Colors.white,
                                  margin: EdgeInsets.all(16),
                                  borderRadius: 8,
                                );
                              },
                              icon: Icon(Icons.shopping_cart),
                              label: Text(
                                'Beli Sekarang',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo,
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 4,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
