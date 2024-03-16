import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class Base64Image extends StatelessWidget {
  final String base64String;
  final double? imageWidth;
  final double? imageHeight;

  const Base64Image({Key? key, required this.base64String, this.imageWidth, this.imageHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Uint8List bytes = base64Decode(base64String);
    return Image.memory(
      bytes, fit: BoxFit.cover, width: imageWidth, // Use the width
      height: imageHeight,
    );
  }
}
