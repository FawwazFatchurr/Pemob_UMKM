import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Text(
              'Usaha Lokal',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Get.back(); // Tutup drawer
              // Jika sudah di home, tidak perlu navigasi
              if (Get.currentRoute != Routes.HOME) {
                Get.offAllNamed(Routes.HOME); // Kembali ke home
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.reviews),
            title: Text('Testimoni'),
            onTap: () {
              Get.back(); // Tutup drawer
              Get.toNamed(Routes.TESTIMONIALS);
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Tentang Toko'),
            onTap: () {
              Get.back(); // Tutup drawer
              Get.toNamed(Routes.ABOUT);
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text('Kontak'),
            onTap: () {
              Get.back(); // Tutup drawer
              Get.toNamed(Routes.CONTACT);
            },
          ),
        ],
      ),
    );
  }
}
