import 'dart:io';
import 'package:camera_app/screens/image_preview.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  final List<File> images;
  const GalleryScreen({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: [
                for (File imageFile in images)
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImagePreview(
                            imageFile: imageFile,
                          ),
                        ),
                      );
                    },
                    child: Image.file(
                      imageFile,
                      fit: BoxFit.cover,
                    ),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
