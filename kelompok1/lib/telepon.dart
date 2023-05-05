import 'package:flutter/material.dart';

class Telepon extends StatelessWidget {
  final List<Map<String, dynamic>> tipeMobil = [
    {'nama': 'Center', 'gambar': 'assets/images/center.jpg'},
    {'nama': 'Fuso', 'gambar': 'assets/images/fuso.jpg'},
    {'nama': 'Tronton', 'gambar': 'assets/images/tronton.jpg'},
    {'nama': 'Truk', 'gambar': 'assets/images/tronton.jpg'},
    {'nama': 'Pickup', 'gambar': 'assets/images/pickup.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 48, 106),
        title: Text(
          'Tipe Mobil',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20.0),
        color: Color.fromARGB(255, 33, 30, 233),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar Tipe Mobil:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: tipeMobil.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          tipeMobil[index]['gambar'],
                          width: 150,
                          height: 150,
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          '${index + 1}. ${tipeMobil[index]['nama']}',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}