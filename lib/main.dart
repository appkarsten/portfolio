import 'package:flutter/material.dart';
import 'package:portfolio/gallery/gallery_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectPortfolio(),
    );
  }
}

class SelectPortfolio extends StatelessWidget {
  SelectPortfolio({
    super.key,
  });
  final List<Widget> _projects = [
    const GalleryApp(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Portfolio Übersicht')),
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Center(
          child: Column(
            children: [
              FilledButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (content) => _projects[0],
                  ));
                },
                child: Text('Gallery'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
