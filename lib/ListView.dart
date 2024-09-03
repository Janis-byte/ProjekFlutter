import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh Listview Widget'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.green,
              alignment: Alignment.topLeft,
              child: Text(
                "Lisview widget digunakan untuk menampilkan halaman tersebut dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll,",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
            Container(
              color: Colors.red,
              alignment: Alignment.topLeft,
              child: Text(
                "Lisview widget digunakan untuk menampilkan halaman tersebut dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll,",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
              height: 400.0,
              width: 300.0,
            ),
            Container(
              color: Colors.deepPurple,
              alignment: Alignment.topLeft,
              child: Text(
                "Lisview widget digunakan untuk menampilkan halaman tersebut dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll,",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
              height: 200.0,
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
