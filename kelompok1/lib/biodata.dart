import 'package:flutter/material.dart';

class Nama extends StatelessWidget {
  final List<String> namaKaryawan = [
    'Ari Nurcahya',
    'Budi Santoso',
    'Diana Susanti',
    'Eko Wibowo',
    'Fauzan Rahman',
    'Gita Pratiwi',
    'Hendra Kurniawan',
    'Indra Permana',
    'Joko Susilo',
    'Kartika Sari'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 48, 89),
        title: Text(
          'Nama',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 33, 30, 233),
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar Nama Karyawan:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: namaKaryawan.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      '${index + 1}. ${namaKaryawan[index]}',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
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
