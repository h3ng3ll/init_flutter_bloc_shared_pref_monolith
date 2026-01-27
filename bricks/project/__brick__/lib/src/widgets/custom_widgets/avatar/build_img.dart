import 'dart:typed_data';

import 'package:flutter/material.dart';

class BuildImg extends StatelessWidget {
  final Uint8List? cacheImg;
  final String? img;
  final BoxShape shape;
  final BoxFit fit;
  final double? width;
  final double? height;

  const BuildImg({
    super.key,
    this.cacheImg,
    this.img,
    this.shape = BoxShape.rectangle,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return cacheImg != null || img != null
        ? Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              shape: shape,
              image: DecorationImage(
                fit: fit,
                image: img != null
                    ? AssetImage(
                        img!,
                      )
                    : MemoryImage(
                        cacheImg!,
                      ),
              ),
            ),
          )
        : Container();
  }
}
