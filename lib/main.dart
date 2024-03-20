import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Menu Gorengan Pinggir Kali'),
          centerTitle: true,
        ),
        body: MenuList(),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildMenuItem('Mendoan', 'Harga Rp.1500', 'salah satu makanan khas yang berasal dari kabupaten Banyumas yang merupakan salah satu wilayah kerja KPKNL Purwokerto.',
            'assets/images/mendoan.jpg'),
        buildMenuItem('Dage', 'Harga Rp.500 ', 'Dage adalah makanan sebagai varian tempe dengan campuran material kelapa.',
            'assets/images/dages.jpg'),
        buildMenuItem('Bakwan', 'Harga Rp.1500', 'makanan gorengan yang terbuat dari sayuran dan tepung terigu yang lazim ditemukan di Indonesia.',
            'assets/images/bakwan.jpg'),
        buildMenuItem('Berontak', 'Harga Rp.1000', 'tahu berbalut tepung yang biasanya dicampur dengan isian berupa sayur, bihun, dan daging.',
            'assets/images/berontak.jpg'),
        buildMenuItem('Es Kelapa Muda', 'Harga Rp.3500', 'minuman segar penyejuk dahaga dan pikiran yang sedang panas yang terbuat dari daging dan air kelapa yang masih muda',
            'assets/images/Es kelapa muda.jpg'),
        buildMenuItem('Kopi Hitam', 'Harga Rp.3000', 'jenis minuman yang terbuat dari biji kopi, lalu dipanggang dan dihaluskan tanpa ditambahkan susu, krim, atau pemanis lainnya.',
            'assets/images/Kopi Hitam.jpg'),
        // Add more menu items as needed
      ],
    );
  }

  Widget buildMenuItem(
      String name, String price, String description, String imagePath) {
    return Container(
      padding: EdgeInsets.all(30.0),
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(20.0), // Adjust border radius
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(price),
                Text(description),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
