import 'package:flutter/material.dart';
import 'package:portfolio/models/gallery_data.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2, children: [
      for (final galleryCard in galleryData)
        Card(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image: AssetImage(galleryCard.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(galleryCard.imageTitle),
                ),
              ]),
        ),
    ]);
  }
}
