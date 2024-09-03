import 'package:flutter/material.dart';

class Tugasakhir extends StatelessWidget {
  const Tugasakhir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Bola"),
        backgroundColor: Colors.red,
      ),
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 250, top: 5),
            child: Row(
              children: [
                Text(
                  "Berita Pertandingan",
                ),
              ],
            ),
            padding: EdgeInsets.only(bottom: 50),
          ),
          Container(
            margin: EdgeInsets.only(left: 250, top: 5),
            child: Row(
              children: [
                Text(
                  "Berita Hari ini",
                ),
              ],
            ),
            padding: EdgeInsets.only(bottom: 50),
          ),
          Column(
            children: [
              Container(
                color: Colors.red,
                width: 500,
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: NetworkImage(
                        'https://awsimages.detik.net.id/community/media/visual/2024/01/25/satoru-gojo.webp?w=700&q=90',
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 200, right: 200),
                        color: Colors.white,
                        child: Text("Gojo Ganteng")),
                    Text(
                      "Jujutsu Kaisen",
                      style:
                          TextStyle(fontSize: 30, backgroundColor: Colors.red),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
