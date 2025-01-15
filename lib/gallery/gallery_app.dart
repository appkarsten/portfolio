import 'package:flutter/material.dart';
import 'package:portfolio/gallery/about_me_page.dart';
import 'package:portfolio/gallery/gallery_page.dart';

class GalleryApp extends StatefulWidget {
  const GalleryApp({super.key});

  @override
  State<GalleryApp> createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyGallery')),
      body: [
        GalleryPage(),
        AboutMePage(),
      ][activeIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeIndex,
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.browse_gallery_outlined),
              label: 'Gallery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Über mich',
            ),
          ]),
    );
  }
}
