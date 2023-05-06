import 'package:flutter/material.dart';

class Alat extends StatelessWidget {
  final List<String> employeeNames = [
    'Helm pengaman',
    'Kacamata Pengaman',
    'Masker',
    'Respirator',
    'Pelindung Wajah',
    'Penutup Telinga',
    'Penyumbat Telinga (Ear Plug)',
    'Wearpack atau Coverall',
    'Rompi Safety',
    'Sepatu Pelindung (Safety Shoes)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 48, 89),
        title: Text(
          'Daftar Nama Karyawan',
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
            SizedBox(height: 20.0),
            Text(
              'Berikut adalah daftar nama karyawan:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: employeeNames.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      '${index + 1}. ${employeeNames[index]}',
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