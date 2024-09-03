import 'package:flutter/material.dart';

class BuildinlayoutWidget extends StatelessWidget {
  const BuildinlayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh Allignment'),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: Text(
            'Semangar belajar',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
