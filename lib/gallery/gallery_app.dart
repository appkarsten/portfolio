import 'package:flutter/material.dart';
import 'package:portfolio/gallery/about_me_page.dart';
import 'package:portfolio/gallery/gallery_page.dart';
import 'package:portfolio/gallery/colors.dart';

class GalleryApp extends StatefulWidget {
  const GalleryApp({super.key});

  @override
  State<GalleryApp> createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  int _activeIndex = 0;
  final List<Widget> _screens = [
    const GalleryPage(),
    const AboutMePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: barBackground,
        title: Text(
          'MyGallery',
          style: TextStyle(color: barFont),
        ),
      ),
      body: _screens[_activeIndex],
      bottomNavigationBar: NavigationBar(
          selectedIndex: _activeIndex,
          indicatorColor: buttonBackground,
          onDestinationSelected: (int index) {
            setState(() {
              _activeIndex = index;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.image),
              label: 'Gallery',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Über mich',
            ),
          ]),
    );
  }
}
