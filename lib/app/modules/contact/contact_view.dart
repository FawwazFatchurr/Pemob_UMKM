import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'contact_controller.dart';

class ContactView extends GetView<ContactController> {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          'Hubungi Kami',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.indigoAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header dengan gradient
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.indigo, Colors.indigoAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.headset_mic_rounded,
                    size: 70,
                    color: Colors.white,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Kami Siap Membantu!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Hubungi kami untuk informasi lebih lanjut',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white.withOpacity(0.9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Konten contact
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Card Telepon
                  _buildContactCard(
                    icon: Icons.phone_rounded,
                    iconColor: Colors.green,
                    title: 'Telepon',
                    subtitle: '+62 812 3456 7890',
                    description: 'Hubungi kami via telepon',
                    onTap: () {
                      Get.snackbar(
                        'Telepon',
                        'Menghubungi +62 812 3456 7890...',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.green,
                        colorText: Colors.white,
                        margin: EdgeInsets.all(16),
                        borderRadius: 8,
                        icon: Icon(Icons.phone, color: Colors.white),
                      );
                    },
                  ),

                  SizedBox(height: 16),

                  // Card Email
                  _buildContactCard(
                    icon: Icons.email_rounded,
                    iconColor: Colors.blue,
                    title: 'Email',
                    subtitle: 'info@usahalokal.com',
                    description: 'Kirim email kepada kami',
                    onTap: () {
                      Get.snackbar(
                        'Email',
                        'Membuka email client...',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.blue,
                        colorText: Colors.white,
                        margin: EdgeInsets.all(16),
                        borderRadius: 8,
                        icon: Icon(Icons.email, color: Colors.white),
                      );
                    },
                  ),

                  SizedBox(height: 16),

                  // Card Lokasi
                  _buildContactCard(
                    icon: Icons.location_on_rounded,
                    iconColor: Colors.red,
                    title: 'Alamat Toko',
                    subtitle: 'Jl. Merdeka No. 17',
                    description: 'Jakarta, Indonesia',
                    onTap: () {
                      Get.snackbar(
                        'Lokasi',
                        'Membuka maps...',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.red,
                        colorText: Colors.white,
                        margin: EdgeInsets.all(16),
                        borderRadius: 8,
                        icon: Icon(Icons.location_on, color: Colors.white),
                      );
                    },
                  ),

                  SizedBox(height: 24),

                  // Social Media Section
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Ikuti Kami',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildSocialButton(
                              icon: Icons.facebook,
                              color: Colors.blue[700]!,
                              label: 'Facebook',
                            ),
                            _buildSocialButton(
                              icon: Icons.camera_alt,
                              color: Colors.pink,
                              label: 'Instagram',
                            ),
                            _buildSocialButton(
                              icon: Icons.chat,
                              color: Colors.green[600]!,
                              label: 'WhatsApp',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24),

                  // Jam operasional
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.indigo.withOpacity(0.1),
                          Colors.indigoAccent.withOpacity(0.05),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.indigo.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: Colors.indigo,
                          size: 32,
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Jam Operasional',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(height: 12),
                        _buildOperationalHour('Senin - Jumat', '09:00 - 17:00'),
                        SizedBox(height: 8),
                        _buildOperationalHour('Sabtu', '09:00 - 15:00'),
                        SizedBox(height: 8),
                        _buildOperationalHour('Minggu', 'Tutup'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required String description,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: iconColor, size: 28),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    description,
                    style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required Color color,
    required String label,
  }) {
    return InkWell(
      onTap: () {
        Get.snackbar(
          'Social Media',
          'Membuka $label...',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: color,
          colorText: Colors.white,
          margin: EdgeInsets.all(16),
          borderRadius: 8,
        );
      },
      borderRadius: BorderRadius.circular(12),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[700])),
        ],
      ),
    );
  }

  Widget _buildOperationalHour(String day, String time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(day, style: TextStyle(fontSize: 15, color: Colors.grey[700])),
        Text(
          time,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: time == 'Tutup' ? Colors.red : Colors.indigo,
          ),
        ),
      ],
    );
  }
}
