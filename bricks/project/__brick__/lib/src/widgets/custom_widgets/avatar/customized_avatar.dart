
import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'build_avatar.dart';


class CustomizedAvatar extends StatelessWidget {
  final Uint8List? cacheImg;
  final VoidCallback? onTap;
  final BoxFit fit;
  final double? width;
  final double? height;
  final EdgeInsets? padding;

  const CustomizedAvatar({
    super.key,
    this.cacheImg,
    this.onTap,
    required this.fit,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return BuildAvatar(
      onTap: onTap,
      fit: BoxFit.cover,
      cacheImg: cacheImg,
    );
  }
}
