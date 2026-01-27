import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'build_avatar_placeholder.dart';
import 'build_decoration_picture_icon.dart';
import 'build_img.dart';

class BuildAvatar extends StatelessWidget {
  final Uint8List? cacheImg;
  final String? img;
  final VoidCallback? onTap;
  final BoxShape shape;
  final BoxFit fit;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Color? borderColor;
  final bool hasDecorationIcon;
  final Widget? customDecorationIcon;

  const BuildAvatar({
    super.key,
    this.cacheImg,
    this.img,
    required this.onTap,
    this.shape = BoxShape.rectangle,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.padding,
    this.borderColor,
    this.hasDecorationIcon = true,
    this.customDecorationIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 140.0,
        height: 141.0,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Center(
              child: BuildAvatarPlaceholder(
                borderColor: borderColor,
                child: img == null && cacheImg == null
                    ? null
                    : ClipRRect(
                  borderRadius: .circular(
                    25.0,
                  ),
                  child: BuildImg(
                    shape: shape,
                    cacheImg: cacheImg,
                    img: img,
                    width: width,
                    height: height,
                  ),
                ),
              ),
            ),
            if (hasDecorationIcon)
              Positioned(
                right: -15,
                bottom: -15,
                child: customDecorationIcon ?? BuildDecorationPictureIcon(),
              ),
          ],
        ),
      ),
    );
  }
}
