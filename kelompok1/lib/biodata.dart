import 'package:flutter/material.dart';

class Biodata extends StatelessWidget {
  const Biodata({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 48, 72),
        title: Text(
          'Biodata Barang',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/fuso.jpg',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Nama Barang : Fuso',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 10.0),
            Text(
              'Merk Barang : Caterpillar',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 10.0),
            Text(
              'Jenis Barang : Alat Berat',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 10.0),
            Text(
              'Harga Barang : Rp. 2.500.000.000',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
