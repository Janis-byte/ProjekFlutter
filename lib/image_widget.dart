import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage(
                  'https://awsimages.detik.net.id/community/media/visual/2024/01/25/satoru-gojo.webp?w=700&q=90'),
              alignment: Alignment.center,
            ),
            Image(
                image: NetworkImage(
                    'https://asset.kompas.com/crops/kX9TU8D9Ni3uyTuuM4dNJTJhNoM=/14x0:1920x1271/750x500/data/photo/2022/08/21/6301793d584d5.jpg')),
            Image(image: AssetImage('assets/download.jpeg'))
          ],
        ),
      ),
    );
  }
}
