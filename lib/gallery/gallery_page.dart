import 'package:flutter/material.dart';
import 'package:portfolio/gallery/image_detail_view.dart';
import 'package:portfolio/models/gallery_data.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
          padding: EdgeInsets.all(11),
          crossAxisCount: 2,
          children: [
            for (int i = 0; i < galleryData.length; i++)
              Card(
                clipBehavior: Clip.hardEdge,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ImageDetailView(imageBox: galleryData[i])));
                  },
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(galleryData[i].imagePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(galleryData[i].imageTitle),
                        ),
                      ]),
                ),
              ),
          ]),
    );
  }
}
