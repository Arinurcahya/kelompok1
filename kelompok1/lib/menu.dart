import 'package:flutter/material.dart';
import 'package:arinurcahya_project/menu/biodata.dart';
import 'package:arinurcahya_project/menu/nama.dart';
import 'package:arinurcahya_project/menu/telepon.dart';

class menu extends StatelessWidget {
  const menu({ superkey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 48, 89),
        title: Text(
          'PT KARET NIRI RUBBER',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 14, 21, 237),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('../assets/images/pabrik.jpg'),
              radius: 190.0,
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 155, 48, 254)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nama()),
                    );
                  },
                  icon: Icon(Icons.people),
                  label: Text("Nama Kariawan"),
                ),
                SizedBox(
                  width: 20.0,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 155, 48, 254)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Telepon()),
                    );
                  },
                  icon: Icon(Icons.directions_car),
                  label: Text("Kendaraan"),
                ),
                SizedBox(
                  width: 20.0,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 155, 48, 254)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Biodata()),
                    );
                  },
                  icon: Icon(Icons.post_add),
                  label: Text("Biodata Barang"),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}