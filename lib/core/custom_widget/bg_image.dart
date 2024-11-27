// core/custom_widget/bg_image.dart
import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_images.dart';

class BgImage extends StatelessWidget {
  BgImage({super.key, required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}
