import 'package:flutter/material.dart';
import 'package:portfolio/models/gallery_data.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          padding: EdgeInsets.all(8),
          crossAxisCount: 2,
          children: [
            for (int i = 0; i < galleryData.length; i++)
              Card(
                clipBehavior: Clip.hardEdge,
                child: GestureDetector(
                  onTap: () {
                    showBottomSheet(
                        context: context,
                        builder: (context) =>
                            ImageDetailView(imageBox: galleryData[i]));
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
                          padding: const EdgeInsets.all(6.0),
                          child: Text(galleryData[i].imageTitle),
                        ),
                      ]),
                ),
              ),
          ]),
    );
  }
}

class ImageDetailView extends StatelessWidget {
  const ImageDetailView({super.key, required this.imageBox});
  final GalleryItem imageBox;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 500,
                minWidth: double.infinity,
              ),
              child: Image.asset(imageBox.imagePath, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Text(
                imageBox.imageTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                imageBox.imageDate,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(imageBox.imageDescription),
            ),
          ],
        ),
      ),
    );
  }
}
