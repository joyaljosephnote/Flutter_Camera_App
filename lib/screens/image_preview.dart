import 'dart:io';

import 'package:flutter/material.dart';

class ImagePreview extends StatefulWidget {
  final File imageFile;
  const ImagePreview({required this.imageFile, super.key});

  @override
  State<ImagePreview> createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  @override
  Widget build(BuildContext context) {
    File picture = File(widget.imageFile.path);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Image.file(picture),
      )),
    );
  }
}
