import 'package:flutter/material.dart';
import 'package:portfolio/gallery/colors.dart';
import 'package:portfolio/models/gallery_data.dart';

class ImageDetailView extends StatelessWidget {
  const ImageDetailView({super.key, required this.imageBox});
  final GalleryItem imageBox;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: barBackground,
        title: Text(
          'Details',
          style: TextStyle(color: barFont),
        ),
      ),
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
              padding: const EdgeInsets.only(top: 22, left: 22, right: 22),
              child: Text(
                imageBox.imageTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Text(
                imageBox.imageDate,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Text(imageBox.imageDescription),
            ),
          ],
        ),
      ),
    );
  }
}
